import { getManager } from "typeorm";
import { runInThisContext } from "vm";
import { Hospedagens_disponiveis } from "../entity/Hospedagens_disponiveis";

export class Hospedagens_disponiveisController{
    async salvar(hospedagem_disponivel: Hospedagens_disponiveis){
        const hospedagem_disponivel_salva = await getManager().save(hospedagem_disponivel);
        return hospedagem_disponivel_salva;
    }

    async recuperaPorId(id: number){
        const hospedagem_disponivel = await getManager().findOne(Hospedagens_disponiveis, id);
        return hospedagem_disponivel;
    }

    async recuperaTodas(){
        const hospedagens_disponiveis = await getManager().find(Hospedagens_disponiveis);
        return hospedagens_disponiveis;
    }
}