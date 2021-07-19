import * as express from 'express';
import * as bodyParser from 'body-parser';
import * as cors from 'cors';
import * as logger from 'morgan';

import { conectarServidorNoBD } from './config/db';
import { routerUsuario } from './routes/usuario';
import { routerCompra_hospedagem } from './routes/compra_hospedagem';
import { routerHospedagens_compradas } from './routes/compra_hospedagem';
import { routerHospedagem_comprada_numero } from './routes/compra_hospedagem';
import { routerPassagens_compradas } from './routes/compra_passagem';
import { routerCompra_passagem } from './routes/compra_passagem';
import { routerHospedagens_disponiveis } from './routes/hospedagens_disponiveis';
import { routerTodas_hospedagens_disponiveis } from './routes/hospedagens_disponiveis';
import { routerPassagens_disponiveis } from './routes/passagens_disponiveis';
import { routerTodas_passagens_disponiveis } from './routes/passagens_disponiveis';

/**
 * Cria a aplicacao
 */
export const app = express();

/**
 * Libera o acesso aos servicos
 */
app.use(cors());

/**
 * Permite receber e enviar JSON
 */
app.use(bodyParser.json());

/**
 * Configura os logs
 */
app.use(logger('dev'));

/**
 * Conecta no bd
 */
conectarServidorNoBD();

/**
 * Configuraco de rotas
 */
//app.use('/usuario', routerUsuario);
app.use('/compra_hospedagem', routerCompra_hospedagem);
app.use('/hospedagens_compradas', routerHospedagens_compradas);
app.use('/hospedagem_comprada_numero', routerHospedagem_comprada_numero);
app.use('/passagens_compradas', routerPassagens_compradas);
app.use('/compra_passagem', routerCompra_passagem);
app.use('/hospedagens_disponiveis', routerHospedagens_disponiveis);
app.use('/todas_hospedagens_disponiveis', routerTodas_hospedagens_disponiveis);
app.use('/passagens_disponiveis', routerPassagens_disponiveis);
app.use('/todas_passagens_disponiveis', routerTodas_passagens_disponiveis);
app.use('/', (req, res) => res.send(
    'Api do app para o projeto de Sistemas Distribuidos'  
    ));
