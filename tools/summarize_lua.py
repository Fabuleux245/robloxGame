\
    #!/usr/bin/env python3
    import os, re, json, hashlib, csv, sys
    from pathlib import Path
    from datetime import datetime

    ROOT = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("dumps")

    PATTERNS = {
        "require": r"\brequire\s*\(",
        "loadstring": r"\bloadstring\s*\(",
        "getfenv": r"\bgetfenv\b",
        "setfenv": r"\bsetfenv\b",
        "getgenv": r"\bgetgenv\b",
        "getrenv": r"\bgetrenv\b",
        "getgc": r"\bgetgc\b",
        "hookfunction": r"\bhookfunction\b",
        "newcclosure": r"\bnewcclosure\b",
        "debug": r"\bdebug\.[a-zA-Z_]\w*",
        "syn": r"\bsyn\.[a-zA-Z_]\w*",
        "http": r"(HttpService|game:HttpGet|HttpPost|RequestAsync)",
        "remotes_fire": r":FireServer\s*\(",
        "remotes_invoke": r":InvokeServer\s*\(",
        "queue_on_teleport": r"\bqueue_on_teleport\b",
    }

    hex_blob = re.compile(r"(0x[0-9a-fA-F]{2,}){10,}")

    def sha1(content: bytes) -> str:
        h = hashlib.sha1(); h.update(content); return h.hexdigest()

    files_info = []
    hash_map = {}

    if not ROOT.exists():
        print(f"[!] Le dossier {ROOT} n'existe pas. Place tes dumps dans '{ROOT}/<gameid>/'")
        sys.exit(1)

    for p in ROOT.rglob("*.lua"):
        try:
            data = p.read_bytes()
        except Exception as e:
            print(f"Skip {p}: {e}")
            continue

        try:
            text = data.decode("utf-8", "replace")
        except:
            text = data.decode("latin-1", "replace")

        h = sha1(data)
        size = len(data)
        lines = text.count("\\n") + 1

        matches = {k: bool(re.search(rx, text)) for k, rx in PATTERNS.items()}
        suspicious_score = sum(matches.values())
        if hex_blob.search(text):
            matches["hex_blob"] = True
            suspicious_score += 1

        info = {
            "path": str(p.relative_to(ROOT)),
            "hash": h,
            "size": size,
            "lines": lines,
            "matches": matches,
            "suspicious_score": suspicious_score,
        }

        files_info.append(info)
        hash_map.setdefault(h, []).append(info["path"])

    # Déduplication
    for info in files_info:
        info["duplicates"] = len(hash_map[info["hash"]])

    summary = {
        "root": str(ROOT),
        "generated_at": datetime.utcnow().isoformat() + "Z",
        "total_files": len(files_info),
        "unique_files": len(hash_map),
        "files": files_info,
    }

    with open("summary.json", "w", encoding="utf-8") as f:
        json.dump(summary, f, ensure_ascii=False, indent=2)

    with open("suspicious.csv", "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f, delimiter=";")
        writer.writerow(["path", "size", "lines", "suspicious_score", "matches"])
        for i in sorted(files_info, key=lambda x: (-x["suspicious_score"], -x["size"]))[:500]:
            writer.writerow([
                i["path"], i["size"], i["lines"], i["suspicious_score"],
                ",".join([k for k,v in i["matches"].items() if v])
            ])

    print("OK -> summary.json & suspicious.csv générés.")
