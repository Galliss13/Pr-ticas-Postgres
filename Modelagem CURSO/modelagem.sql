CREATE TABLE "students"(
    "id" SERIAL PRIMARY KEY, 
    "classId" INTEGER NOT NULL REFERENCES "classes"("id")
    "name" TEXT NOT NULL,
    "CPF" VARCHAR(11) NOT NULL UNIQUE,
    "email" TEXT NOT NULL UNIQUE,
)

CREATE TABLE "classes" (
    "id" SERIAL PRIMARY KEY,
    "code" VARCHAR(2) NOT NULL UNIQUE,
)

CREATE TABLE "studentHistory" (
    "id" SERIAL PRIMARY KEY,
    "studentId" INTEGER NOT NULL REFERENCES "students"("id"),
    "classId" INTEGER NOT NULL REFERENCES "classes"("id"),
    "start" DATE NOT NULL,
    "end" DATE NOT NULL
)

CREATE TABLE "projects" (
    "id" SERIAL PRIMARY KEY,
    "moduleId" INTEGER NOT NULL REFERENCES "modules"("id")
    "gradeId" INTEGER NOT NULL REFERENCES "grades"("id"),
    "name" TEXT NOT NULL,
    "release" TIMESTAMP NOT NULL,
    "deadline" TIMESTAMP NOT NULL,
)

CREATE TABLE "grades" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE
    --Acima das expectativas, dentro das expectativas ou abaixo das expectativas.
)

CREATE TABLE "modules" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE
)