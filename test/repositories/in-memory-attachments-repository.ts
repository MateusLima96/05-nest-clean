import { AttachmentsRepository } from '@/domain/forum/application/repositories/attachments-repository'
import { Attachment } from '@/domain/forum/enterprise/entities/attachement'

export class InMemoryAttachmentsRepository implements AttachmentsRepository {
  public items: Attachment[] = []

  async create(attachement: Attachment) {
    this.items.push(attachement)
  }
}
