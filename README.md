# شروحات المنصة (Platform Guides)

الشروحات العامة لمنصة سيرفرك (`serverk.gg`)، وهي كل شرح لا يرتبط بلعبة معيّنة: البداية، واللوحة، والنسخ الاحتياطية، و RCON، و SFTP، والانتقال إلى سيرفرك، والدومين الخاص، والفواتير، والدفع، وديسكورد. تُكتب الشروحات بالعربية أولًا، ثم بالإنجليزية.

The general guides for the Serverk platform (`serverk.gg`): every guide that is not tied to one game. They cover getting started, the panel, backups, RCON, SFTP, moving in, your own domain, billing, payments and Discord. Guides are written in Arabic first, then in English.

## Layout

- `serverk.yml`: the guide package manifest (`kind: GuidePackage`), with each guide's id, title, summary, tags and body paths.
- `guides/<id>/ar.md` and `guides/<id>/en.md`: the guide bodies.
- `blog/<slug>/ar.md` and `blog/<slug>/en.md`: the blog articles. Articles are not listed in `serverk.yml`.

## Blog

An article is a folder under `blog/`. The folder name is the article id, and both languages carry a YAML frontmatter block at the top of the file:

```md
---
title: "كيف تنشئ سيرفر ماينكرافت لك ولأصحابك"
summary: "ثلاث طرق لإنشاء سيرفر: من جهازك، أو مجانًا، أو بالاستئجار. ما يناسبك منها، وما الفرق بينها."
publishedAt: "2026-09-05"
tags:
  - minecraft
---

## ثلاث طرق، وواحدة منها تناسبك

نص المقال.
```

`title` and `summary` are per language. `publishedAt` (required, `YYYY-MM-DD`), `updatedAt`, `tags` and `video` (an 11-character YouTube id) are language independent and are read from `ar.md`; `en.md` may repeat them only with identical values. Unknown keys are rejected. Adding an article is one folder and two files, and nothing else changes.

## Contribute

- افتح issue لأي تصحيح أو شرح ناقص، بالعربية أو بالإنجليزية.
- Every guide needs both `ar.md` and `en.md`. Arabic is the source, written to the Serverk copy standard: formal Arabic with a light Gulf touch, as defined in `serverk/.claude/skills/serverk-copy/SKILL.md`.
- File names, commands and config keys stay Latin inside code spans.
- Publishing to the platform is done by the Serverk team through the central release pipeline; merged changes ride the next release.
