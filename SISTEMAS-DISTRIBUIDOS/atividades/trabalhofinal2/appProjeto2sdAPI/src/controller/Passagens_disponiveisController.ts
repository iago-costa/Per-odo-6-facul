import { getManager } from "typeorm";
import { runInThisContext } from "vm";
import { Passagens_disponiveis } from "../entity/Passagens_disponiveis";

export class Passagens_disponiveisController{
    async salvar(passagem_disponivel: Passagens_disponiveis){
        const passagem_disponivel_salva = await getManager().save(passagem_disponivel);
        return passagem_disponivel_salva;
    }

    async recuperaPorId(id: number){
        const passagem_disponivel = await getManager().findOne(Passagens_disponiveis, id);
        return passagem_disponivel;
    }

    async recuperaTodas(){
        const passagens_disponiveis = await getManager().find(Passagens_disponiveis);
        return passagens_disponiveis;
    }
}