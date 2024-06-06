import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient()

async function main() {



    const book = await prisma.book.create(
        {
            data: {
                ID: 2,
                Title: 'bookscript',
                ISBN: "978-3-16-148410-1",
                Author: {
                    create:
                    {
                        ID: 1,
                        Name: "Josh",
                        Biography: "you are awesome if this works",

                    }

                },
                Member: {
                    create:
                    {
                        ID: 1,
                        Name: "Joshua",
                        Email: "hendersonjardimj@gmail.com",
                        Address: "1226 Putnam",

                    }
                }

            }
        }
    );
    console.log(book)
};


main()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    })