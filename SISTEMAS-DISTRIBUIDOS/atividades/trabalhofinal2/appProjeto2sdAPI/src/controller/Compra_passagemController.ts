import { getManager } from "typeorm";
import { runInThisContext } from "vm";
import { Compra_passagem } from "../entity/Compra_passagem";

export class Compra_passagemController{
    async salvar(passagem_comprada: Compra_passagem){
        const passagem_comprada_salva = await getManager().save(passagem_comprada);
        return passagem_comprada_salva;
    }

    async recuperaPorId(id: number){
        const passagem_comprada = await getManager().findOne(Compra_passagem, id);
        return passagem_comprada;
    }

    async recuperaTodas(){
        const passagens_compradas = await getManager().find(Compra_passagem);
        return passagens_compradas;
    }
}