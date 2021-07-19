import {Entity, PrimaryGeneratedColumn, Column} from "typeorm";

@Entity()
export class Passagens_disponiveis {
    constructor(destino_passagem: string, quantidade_passagem: number){

        this.destino_passagem = destino_passagem;
        this.quantidade_passagem = quantidade_passagem;
        
    }

    @PrimaryGeneratedColumn()
    id: number;

    @Column({nullable: true})
    destino_passagem: string;

    @Column({nullable: true})
    quantidade_passagem: number;

}
