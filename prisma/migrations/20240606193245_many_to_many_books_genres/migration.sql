-- AlterTable
ALTER TABLE "Book" ADD COLUMN     "genreID" INTEGER;

-- CreateTable
CREATE TABLE "GenresOnBooks" (
    "bookID" INTEGER NOT NULL,
    "genreID" INTEGER NOT NULL,
    "assignedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "GenresOnBooks_pkey" PRIMARY KEY ("bookID","genreID")
);

-- AddForeignKey
ALTER TABLE "GenresOnBooks" ADD CONSTRAINT "GenresOnBooks_bookID_fkey" FOREIGN KEY ("bookID") REFERENCES "Book"("ID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GenresOnBooks" ADD CONSTRAINT "GenresOnBooks_genreID_fkey" FOREIGN KEY ("genreID") REFERENCES "Genre"("ID") ON DELETE RESTRICT ON UPDATE CASCADE;
