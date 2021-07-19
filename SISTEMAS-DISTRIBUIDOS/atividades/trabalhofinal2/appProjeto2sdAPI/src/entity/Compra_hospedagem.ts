import {Entity, PrimaryGeneratedColumn, Column} from "typeorm";

@Entity()
export class Compra_hospedagem {
    constructor(destino_hospedagem: string, data_entrada_hospedagem: string, data_saida_hospedagem: string, quarto_hospedagem: string, numero_hospedagem: string, idade_hospedagem: string,
        nome_completo_hospedagem: string, cpf_hospedagem: string, numero_cartao_hospedagem: string, cvc_cartao_hospedagem: string, mes_ano_hospedagem: string, parcela_hospedagem: number){

        this.destino_hospedagem = destino_hospedagem;
        this.data_entrada_hospedagem = data_entrada_hospedagem;
        this.data_saida_hospedagem = data_saida_hospedagem;
        this.quarto_hospedagem = quarto_hospedagem;
        this.numero_hospedagem = numero_hospedagem;
        this.idade_hospedagem = idade_hospedagem;
        this.nome_completo_hospedagem = nome_completo_hospedagem;
        this.cpf_hospedagem = cpf_hospedagem;
        this.numero_cartao_hospedagem = numero_cartao_hospedagem;
        this.cvc_cartao_hospedagem = cvc_cartao_hospedagem;
        this.mes_ano_hospedagem = mes_ano_hospedagem;
        this.parcela_hospedagem = parcela_hospedagem;
        
    }

    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    destino_hospedagem: string;

    @Column({nullable: true})
    data_entrada_hospedagem: string;

    @Column({nullable: true})
    data_saida_hospedagem: string;

    @Column({nullable: true})
    quarto_hospedagem: string;

    @Column({nullable: true})
    numero_hospedagem: string;

    @Column({nullable: true})
    idade_hospedagem: string;

    @Column({nullable: true})
    nome_completo_hospedagem: string;

    @Column({nullable: true})
    cpf_hospedagem: string;

    @Column({nullable: true})
    numero_cartao_hospedagem: string;

    @Column({nullable: true})
    cvc_cartao_hospedagem: string;

    @Column({nullable: true})
    mes_ano_hospedagem: string;

    @Column({nullable: true})
    parcela_hospedagem: number;

}
