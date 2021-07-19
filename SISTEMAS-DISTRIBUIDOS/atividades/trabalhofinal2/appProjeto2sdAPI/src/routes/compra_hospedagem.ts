import { Router } from "express";
import { Compra_hospedagemController } from "../controller/Compra_hospedagemController";
import { Compra_hospedagem } from "../entity/Compra_hospedagem";

export const routerCompra_hospedagem = Router();
export const routerHospedagens_compradas = Router();
export const routerHospedagem_comprada_numero = Router();
const compra_hospedagemCtrl = new Compra_hospedagemController();

/**
 * Servico para salvar nova compra de hospedagem
 */
 routerCompra_hospedagem.post('/', async (req, res) => {
    const { destino_hospedagem, data_entrada_hospedagem, data_saida_hospedagem, quarto_hospedagem, numero_hospedagem, idade_hospedagem,
        nome_completo_hospedagem, cpf_hospedagem, numero_cartao_hospedagem, cvc_cartao_hospedagem, mes_ano_hospedagem, parcela_hospedagem} = req.body;
    const compra_hospedagem = new Compra_hospedagem(destino_hospedagem, data_entrada_hospedagem, data_saida_hospedagem, quarto_hospedagem, numero_hospedagem, idade_hospedagem,
        nome_completo_hospedagem, cpf_hospedagem, numero_cartao_hospedagem, cvc_cartao_hospedagem, mes_ano_hospedagem, parcela_hospedagem);
    const compra_hospedagem_salvo = await compra_hospedagemCtrl.salvar(compra_hospedagem);
    res.json(compra_hospedagem_salvo);
});

/**
 * Servico para recuperar uma compra de hospedagem salva por id
 */
 routerCompra_hospedagem.get('/:idCompra_hospedagem', async (req, res) => {
    const  idCompra_hospedagem  = parseInt (req.params.idCompra_hospedagem);
    const compra_hospedagem_por_id = await compra_hospedagemCtrl.recuperaPorId(idCompra_hospedagem);
    res.json(compra_hospedagem_por_id);
});

/**
 * Servico para recuperar uma compra de hospedagem salva por numero/etiqueta
 */
 routerHospedagem_comprada_numero.get('/:numHospedagem_comprada', async (req, res) => {
    const  numHospedagem_comprada  = req.params.numHospedagem_comprada;
    const hospedagem_comprada_por_num = await compra_hospedagemCtrl.recuperaPorNumero(numHospedagem_comprada);
    res.json(hospedagem_comprada_por_num);
});

/**
 * Servico para recuperar todas as compras de hospedagem
 */
 routerHospedagens_compradas.get('/', async (req, res) => {
    const todas_hospedagens_compradas = await compra_hospedagemCtrl.recuperaTodas();
    res.json(todas_hospedagens_compradas);
});
