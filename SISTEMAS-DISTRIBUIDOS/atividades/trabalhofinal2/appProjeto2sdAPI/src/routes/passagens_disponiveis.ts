import { Router } from "express";
import { Passagens_disponiveis } from "../entity/Passagens_disponiveis";
import { Passagens_disponiveisController } from "../controller/Passagens_disponiveisController";

export const routerPassagens_disponiveis = Router();
export const routerTodas_passagens_disponiveis = Router();
const passagens_disponiveisCtrl = new Passagens_disponiveisController();

/**
 * Servico para salvar nova compra de hospedagem
 */
 routerPassagens_disponiveis.post('/', async (req, res) => {
    const {destino_passagem, quantidade_passagem} = req.body;
    const passagens_disponiveis = new Passagens_disponiveis(destino_passagem, quantidade_passagem);
    const passagens_disponiveis_salvo = await passagens_disponiveisCtrl.salvar(passagens_disponiveis);
    res.json(passagens_disponiveis_salvo);
});

/**
 * Servico para recuperar uma compra de hospedagem salva por id
 */
 routerPassagens_disponiveis.get('/:idPassagens_disponiveis', async (req, res) => {
    const  idPassagens_disponiveis  = parseInt (req.params.idPassagens_disponiveis);
    const passagens_disponiveis_por_id = await passagens_disponiveisCtrl.recuperaPorId(idPassagens_disponiveis);
    res.json(passagens_disponiveis_por_id);
});


/**
 * Servico para recuperar todas as compras de hospedagem
 */
 routerTodas_passagens_disponiveis.get('/', async (req, res) => {
    const todas_passagens_disponiveis = await passagens_disponiveisCtrl.recuperaTodas();
    res.json(todas_passagens_disponiveis);
});
