# Развёртывание лендинга «Прости и отпусти» на Coolify (Beget)

Статический сайт: `index.html` + картинки `.webp`. Сборки нет, базы нет.
Форма записи — виджет GetCourse, встроенный в страницу.

1. **GitHub** — `tukranchuk82-lang/prosti-i-otpusti` (форк репозитория разработчика).
2. **Coolify** — собирает образ по `Dockerfile` (nginx) и раздаёт на сервере Beget.
3. **Поддомен** — `prostiotpusti.petranovskayaonline.ru`.

## Настройки в Coolify
New Resource → Public Repository → `tukranchuk82-lang/prosti-i-otpusti`

- Build Pack: `Dockerfile`
- Branch: `main`, Base Directory: `/`
- Ports Exposes: `80`
- Domains: `https://prostiotpusti.petranovskayaonline.ru`
- Переменные окружения не нужны.

## DNS
`prostiotpusti.petranovskayaonline.ru → A → 31.128.38.192`

## Обновление от разработчика
```bash
git fetch upstream
git merge upstream/main
git push origin main
```
Затем в Coolify «Deploy» (или автодеплой, если включён).
