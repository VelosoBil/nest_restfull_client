import { PartialType } from '@nestjs/mapped-types';
import { CreateClienteDto } from './create-cliente.dto';
import { IsString } from 'class-validator';

export class UpdateClienteDto extends PartialType(CreateClienteDto) {

    @IsString()
    nome: string

    @IsString()
    cep: string

    @IsString()
    endereco: string

    @IsString()
    complemento: string

    @IsString()
    bairro: string

    @IsString()
    cidade: string

    @IsString()
    uf: string

    @IsString()
    celular: string

    @IsString()
    email: string
}
