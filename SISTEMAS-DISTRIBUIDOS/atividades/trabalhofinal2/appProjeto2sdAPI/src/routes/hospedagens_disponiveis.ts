import { Router } from "express";
import { Hospedagens_disponiveis } from "../entity/Hospedagens_disponiveis";
import { Hospedagens_disponiveisController } from "../controller/Hospedagens_disponiveisController";

export const routerHospedagens_disponiveis = Router();
export const routerTodas_hospedagens_disponiveis = Router();
const hospedagens_disponiveisCtrl = new Hospedagens_disponiveisController();

/**
 * Servico para salvar nova compra de hospedagem
 */
 routerHospedagens_disponiveis.post('/', async (req, res) => {
    const {destino_hospedagem, quantidade_hospedagem} = req.body;
    const hospedagens_disponiveis = new Hospedagens_disponiveis(destino_hospedagem, quantidade_hospedagem);
    const hospedagens_disponiveis_salvo = await hospedagens_disponiveisCtrl.salvar(hospedagens_disponiveis);
    res.json(hospedagens_disponiveis_salvo);
});

/**
 * Servico para recuperar uma compra de hospedagem salva por id
 */
 routerHospedagens_disponiveis.get('/:idHospedagens_disponiveis', async (req, res) => {
    const  idHospedagens_disponiveis  = parseInt (req.params.idHospedagens_disponiveis);
    const hospedagens_disponiveis_por_id = await hospedagens_disponiveisCtrl.recuperaPorId(idHospedagens_disponiveis);
    res.json(hospedagens_disponiveis_por_id);
});

/**
 * Servico para recuperar uma compra de hospedagem salva por numero/etiqueta
 */
 /*routerPassagem_comprada_numero.get('/:numPassagem_comprada', async (req, res) => {
    const  numPassagem_comprada  = req.params.numPassagem_comprada;
    const passagem_comprada_por_num = await compra_passagemCtrl.recuperaPorNumero(numPassagem_comprada);
    res.json(passagem_comprada_por_num);
});*/

/**
 * Servico para recuperar todas as compras de hospedagem
 */
 routerTodas_hospedagens_disponiveis.get('/', async (req, res) => {
    const todas_hospedagens_disponiveis = await hospedagens_disponiveisCtrl.recuperaTodas();
    res.json(todas_hospedagens_disponiveis);
});
