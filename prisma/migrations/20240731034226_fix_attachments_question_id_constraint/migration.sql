-- DropForeignKey
ALTER TABLE "attachements" DROP CONSTRAINT "attachements_question_id_fkey";

-- AlterTable
ALTER TABLE "attachements" ALTER COLUMN "question_id" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "attachements" ADD CONSTRAINT "attachements_question_id_fkey" FOREIGN KEY ("question_id") REFERENCES "questions"("id") ON DELETE SET NULL ON UPDATE CASCADE;
