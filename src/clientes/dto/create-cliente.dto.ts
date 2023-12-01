import { Cliente  } from '../entities/cliente.entity';
import {IsString} from 'class-validator'
export class CreateClienteDto extends Cliente {
    
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