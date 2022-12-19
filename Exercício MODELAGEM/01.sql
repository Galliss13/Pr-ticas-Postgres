CREATE DATABASE "e-commerce de roupas"

CREATE TABLE "users" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "email" TEXT UNIQUE NOT NULL,
    "password" TEXT NOT NULL
)

CREATE TABLE "products" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    "categoryId" INTEGER NOT NULL REFERENCES "categories"("id")
    "size" VARCHAR(1) NOT NULL
)

CREATE TABLE "productPicture" ( 
    "id" SERIAL PRIMARY KEY,
    "productId" INTEGER NOT NULL REFERENCES "products"("id"),
    "imageURL" TEXT NOT NULL,
    "isMainPicture" BOOLEAN NOT NULL DEFAULT FALSE
)

CREATE TABLE "categories" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT UNIQUE NOT NULL,
)

CREATE TABLE "cartItem" (
    "userId" INTEGER NOT NULL REFERENCES "users"("id"),
    "productId" INTEGER NOT NULL "products"("id"),
    "Amount" INTEGER NOT NULL
)


CREATE TABLE "purchases" (
    "id" SERIAL PRIMARY KEY
    "userId" INTEGER NOT NULL REFERENCES "users"("id"),
    "productId" INTEGER NOT NULL "products"("id"),
    "status" TEXT NOT NULL DEFAULT "pending",
    "purchaseDate" TIMESTAMP NOT NULL,
    "deliveyAdress" TEXT NOT NULL
)