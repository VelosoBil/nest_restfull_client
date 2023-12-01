import { Injectable } from '@nestjs/common';
import { CreateClienteDto } from './dto/create-cliente.dto';
import { UpdateClienteDto } from './dto/update-cliente.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class ClientesService {

  constructor(private readonly prisma: PrismaService) { }

  create(data: CreateClienteDto) {
    return this.prisma.clientes.create({

      data,

    });

  }


  findAll() {
    return this.prisma.clientes.findMany();
  }

  findOne(id: number) {
    return this.prisma.clientes.findUnique(
      {
        where: {id}
      }
    );
  }

  update(id: number, data: UpdateClienteDto) {
    return this.prisma.clientes.update(
      {
        where: {id},
        data,
      }
    );
  }

  remove(id: number) {
    return  this.prisma.clientes.delete(
      {
        where: {id}
      }
    );
  }
}
