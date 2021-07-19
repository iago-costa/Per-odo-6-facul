import {Entity, PrimaryGeneratedColumn, Column} from "typeorm";

@Entity()
export class Hospedagens_disponiveis {
    constructor(destino_hospedagem: string, quantidade_hospedagem: number){

        this.destino_hospedagem = destino_hospedagem;
        this.quantidade_hospedagem = quantidade_hospedagem;
        
    }

    @PrimaryGeneratedColumn()
    id: number;

    @Column({nullable: true})
    destino_hospedagem: string;

    @Column({nullable: true})
    quantidade_hospedagem: number;

}
