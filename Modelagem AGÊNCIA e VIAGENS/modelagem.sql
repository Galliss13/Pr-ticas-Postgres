CREATE TABLE "companies" (
	"id" SERIAL PRIMARY KEY,
	"abbreviation" TEXT NOT NULL,
	"name" TEXT NOT NULL
)

CREATE TABLE "flights" (
	"id" SERIAL PRIMARY KEY,
	"abbreviation" TEXT NOT NULL,
	"companyId" INTEGER NOT NULL REFERENCES "companies"("id"),
	"departureId" INTEGER NOT NULL REFERENCES "airports"("id"),
	"destinationId" INTEGER NOT NULL REFERENCES "airports"("id"),
	"departureTime" DATE NOT NULL,
	"arrivalTime" DATE NOT NULL
)

CREATE TABLE "airports" (
	"id" SERIAL PRIMARY KEY,
	"abbreviation" TEXT NOT NULL,
	"name" TEXT NOT NULL
)