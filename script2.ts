import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient()

async function main() {



    const updateBorrow = await prisma.book.update(
        {
            where: {
                ID: 2,

            },
            data: {
                memberID: 1
            }
        })
    console.log(updateBorrow)
};


main()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    });