# roblox-dumps

Dépôt qui centralise des **dumps de scripts locaux Roblox** et des **outils d'analyse**.

## Structure

```
roblox-dumps/
├─ README.md
├─ tools/
│  └─ summarize_lua.py
├─ dumps/
│  └─ .gitkeep
├─ summary/
│  └─ .gitkeep
├─ .gitignore
├─ .gitattributes
└─ .github/
   └─ workflows/
      └─ analyze.yml
```

## Ajouter un dump

1. Place tes `.lua` dans `dumps/<placeId>_<YYYYMMDD-HHMMSS>/`.
2. Lance l'analyse :

   ```bash
   python tools/summarize_lua.py dumps
   ```

3. Commit & push :

   ```bash
   git add -A
   git commit -m "Add dump"
   git push
   ```

## CI GitHub Actions

À chaque `push`, la CI lance `tools/summarize_lua.py` et publie :

- `summary/summary.json`
- `summary/suspicious.csv`

dans les artifacts du job.
