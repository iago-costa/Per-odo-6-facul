import {Entity, PrimaryGeneratedColumn, Column} from "typeorm";

@Entity()
export class Compra_passagem {
    constructor(ida_passagem: boolean, idaevolta_passagem: boolean, origem_passagem: string, destino_passagem: string, data_ida_passagem: string, data_volta_passagem: string,
        nome_completo_passagem: string, cpf_passagem: string, numero_cartao_passagem: string, cvv_cartao_passagem: string, mes_ano_passagem: string, parcela_passagem: number, numero_passagem: string, idade_passagem: string){

        this.ida_passagem = ida_passagem;
        this.idaevolta_passagem = idaevolta_passagem;
        this.origem_passagem = origem_passagem;
        this.destino_passagem = destino_passagem;
        this.data_ida_passagem = data_ida_passagem;
        this.data_volta_passagem = data_volta_passagem;
        this.nome_completo_passagem = nome_completo_passagem;
        this.cpf_passagem = cpf_passagem;
        this.numero_cartao_passagem = numero_cartao_passagem;
        this.cvv_cartao_passagem = cvv_cartao_passagem;
        this.mes_ano_passagem = mes_ano_passagem;
        this.parcela_passagem = parcela_passagem;
        this.numero_passagem = numero_passagem;
        this.idade_passagem = idade_passagem;
        
    }

    @PrimaryGeneratedColumn()
    id: number;

    @Column({nullable: true})
    ida_passagem: boolean;

    @Column({nullable: true})
    idaevolta_passagem: boolean;

    @Column({nullable: true})
    origem_passagem: string;

    @Column()
    destino_passagem: string;

    @Column({nullable: true})
    data_ida_passagem: string;

    @Column({nullable: true})
    data_volta_passagem: string;

    @Column({nullable: true})
    nome_completo_passagem: string;

    @Column({nullable: true})
    cpf_passagem: string;

    @Column({nullable: true})
    numero_cartao_passagem: string;

    @Column({nullable: true})
    cvv_cartao_passagem: string;

    @Column({nullable: true})
    mes_ano_passagem: string;

    @Column({nullable: true})
    parcela_passagem: number;

    @Column({nullable: true})
    numero_passagem: string

    @Column({nullable: true})
    idade_passagem: string

}
