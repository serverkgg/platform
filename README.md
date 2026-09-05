# شروحات المنصة (Platform Guides)

شروحات منصة سيرفرك (`serverk.gg`) العامة — كل شرح ما هو مرتبط بلعبة معيّنة: إنشاء الحساب، لوحة التحكم، الفواتير، الدفع، وديسكورد. الشروحات تُكتب بالعربي أولاً والإنجليزي ترجمة.

The general guides for the Serverk platform (`serverk.gg`) — every guide that is not tied to one game: account setup, the panel, billing, payments, and Discord. Guides are written Arabic-first with English as the translation.

## Layout

- `serverk.yml` — the guide package manifest (`kind: GuidePackage`): each guide's id, title, summary, tags, and body paths.
- `guides/<id>/ar.md` and `guides/<id>/en.md` — the guide bodies.
- `blog/<slug>/ar.md` and `blog/<slug>/en.md` — the blog articles. Articles are not listed in `serverk.yml`.

## Blog

An article is a folder under `blog/`. The folder name is the article id, and both languages carry a YAML frontmatter block at the top of the file:

```md
---
title: "كيف تسوي سيرفر ماينكرافت لك ولأصحابك"
summary: "ثلاث طرق تسوي فيها سيرفر — وش يناسبك ووش الفرق بينها."
publishedAt: "2026-09-05"
tags:
  - minecraft
---

## أول عنوان

نص المقال.
```

`title` and `summary` are per language. `publishedAt` (required, `YYYY-MM-DD`), `updatedAt`, `tags` and `video` (an 11-character YouTube id) are language independent and are read from `ar.md`; `en.md` may repeat them only with identical values. Unknown keys are rejected. Adding an article is one folder and two files — nothing else changes.

## Contribute

- افتح issue لأي تصحيح أو شرح ناقص — بالعربي أو بالإنجليزي.
- Every guide needs both `ar.md` and `en.md`; Arabic is the source, and it is written in Gulf gaming Arabic, not formal MSA.
- File names, commands, and config keys stay Latin inside code spans.
- Publishing to the platform is done by the Serverk team through the central release pipeline; merged changes ride the next release.
