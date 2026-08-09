# شروحات المنصة (Platform Guides)

شروحات منصة سيرفرك (`serverk.gg`) العامة — كل شرح ما هو مرتبط بلعبة معيّنة: إنشاء الحساب، لوحة التحكم، الفواتير، الدفع، وديسكورد. الشروحات تُكتب بالعربي أولاً والإنجليزي ترجمة.

The general guides for the Serverk platform (`serverk.gg`) — every guide that is not tied to one game: account setup, the panel, billing, payments, and Discord. Guides are written Arabic-first with English as the translation.

## Layout

- `serverk.yml` — the guide package manifest (`kind: GuidePackage`): each guide's id, title, summary, tags, and body paths.
- `guides/<id>/ar.md` and `guides/<id>/en.md` — the guide bodies.

## Contribute

- افتح issue لأي تصحيح أو شرح ناقص — بالعربي أو بالإنجليزي.
- Every guide needs both `ar.md` and `en.md`; Arabic is the source, and it is written in Gulf gaming Arabic, not formal MSA.
- File names, commands, and config keys stay Latin inside code spans.
- Publishing to the platform is done by the Serverk team through the central release pipeline; merged changes ride the next release.
