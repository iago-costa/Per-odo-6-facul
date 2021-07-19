import { Router } from "express";
import { Compra_passagemController } from "../controller/Compra_passagemController";
import { Compra_passagem } from "../entity/Compra_passagem";

export const routerCompra_passagem = Router();
export const routerPassagens_compradas = Router();
export const routerPassagem_comprada_numero = Router();
const compra_passagemCtrl = new Compra_passagemController();

/**
 * Servico para salvar nova compra de hospedagem
 */
 routerCompra_passagem.post('/', async (req, res) => {
    const { ida_passagem, idaevolta_passagem, origem_passagem, destino_passagem, data_ida_passagem, data_volta_passagem,
        nome_completo_passagem, cpf_passagem, numero_cartao_passagem, cvv_cartao_passagem, mes_ano_passagem, parcela_passagem, numero_passagem, idade_passagem} = req.body;
    const compra_passagem = new Compra_passagem(ida_passagem, idaevolta_passagem, origem_passagem, destino_passagem, data_ida_passagem, data_volta_passagem,
        nome_completo_passagem, cpf_passagem, numero_cartao_passagem, cvv_cartao_passagem, mes_ano_passagem, parcela_passagem, numero_passagem, idade_passagem);
    const compra_passagem_salvo = await compra_passagemCtrl.salvar(compra_passagem);
    res.json(compra_passagem_salvo);
});

/**
 * Servico para recuperar uma compra de hospedagem salva por id
 */
 routerCompra_passagem.get('/:idCompra_passagem', async (req, res) => {
    const  idCompra_passagem  = parseInt (req.params.idCompra_passagem);
    const compra_passagem_por_id = await compra_passagemCtrl.recuperaPorId(idCompra_passagem);
    res.json(compra_passagem_por_id);
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
 routerPassagens_compradas.get('/', async (req, res) => {
    const todas_passagens_compradas = await compra_passagemCtrl.recuperaTodas();
    res.json(todas_passagens_compradas);
});
