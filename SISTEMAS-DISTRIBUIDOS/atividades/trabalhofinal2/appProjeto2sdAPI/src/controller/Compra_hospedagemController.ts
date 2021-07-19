import { getManager } from "typeorm";
import { runInThisContext } from "vm";
import { Compra_hospedagem } from "../entity/Compra_hospedagem";

export class Compra_hospedagemController{
    async salvar(hospedagem_comprada: Compra_hospedagem){
        const hospedagem_comprada_salva = await getManager().save(hospedagem_comprada);
        return hospedagem_comprada_salva;
    }

    async recuperaPorId(id: number){
        const hospedagem_comprada = await getManager().findOne(Compra_hospedagem, id);
        return hospedagem_comprada;
    }

    async recuperaPorNumero(numero_hospedagem: string){
        const hospedagem_comprada = await getManager().findOne(Compra_hospedagem, numero_hospedagem);
        return hospedagem_comprada;
    }

    async recuperaTodas(){
        const hospedagens_compradas = await getManager().find(Compra_hospedagem);
        return hospedagens_compradas;
    }
}