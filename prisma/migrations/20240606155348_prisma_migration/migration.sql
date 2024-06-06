-- CreateTable
CREATE TABLE "Book" (
    "ID" INTEGER NOT NULL,
    "Title" TEXT NOT NULL,
    "ISBN" INTEGER NOT NULL,
    "authorID" INTEGER,
    "memberID" INTEGER,

    CONSTRAINT "Book_pkey" PRIMARY KEY ("ID")
);

-- CreateTable
CREATE TABLE "Author" (
    "ID" INTEGER NOT NULL,
    "Name" TEXT NOT NULL,
    "Biography" TEXT NOT NULL,

    CONSTRAINT "Author_pkey" PRIMARY KEY ("ID")
);

-- CreateTable
CREATE TABLE "Genre" (
    "ID" INTEGER NOT NULL,
    "Name" TEXT NOT NULL,
    "bookID" INTEGER,

    CONSTRAINT "Genre_pkey" PRIMARY KEY ("ID")
);

-- CreateTable
CREATE TABLE "Member" (
    "ID" INTEGER NOT NULL,
    "Name" TEXT NOT NULL,
    "Email" TEXT NOT NULL,
    "Address" TEXT NOT NULL,

    CONSTRAINT "Member_pkey" PRIMARY KEY ("ID")
);

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_authorID_fkey" FOREIGN KEY ("authorID") REFERENCES "Author"("ID") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_memberID_fkey" FOREIGN KEY ("memberID") REFERENCES "Member"("ID") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Genre" ADD CONSTRAINT "Genre_bookID_fkey" FOREIGN KEY ("bookID") REFERENCES "Book"("ID") ON DELETE SET NULL ON UPDATE CASCADE;
