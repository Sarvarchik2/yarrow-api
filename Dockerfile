# ЭТАП 1: Сборка
FROM node:20-alpine AS builder
WORKDIR /app

# Копируем файлы зависимостей первого порядка
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь исходный код
COPY . .

# Собираем Nuxt приложение (результат будет в папке .output)
RUN npm run build

# ЭТАП 2: Запуск (Production)
FROM node:20-alpine AS runner
WORKDIR /app

# Копируем из билдера только готовую сборку (это уменьшит образ на 80%)
COPY --from=builder /app/.output ./.output

# Настройки окружения
ENV NODE_ENV=production
ENV PORT=3000

# Открываем порт для мира
EXPOSE 3000

# Запуск через встроенный в Nuxt движок Nitro
CMD ["node", ".output/server/index.mjs"]
