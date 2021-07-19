import { Router } from "express";
import { UsuarioController } from "../controller/UsuarioController";
import { Usuario } from "../entity/Usuario";

export const routerUsuario = Router();
const usuarioCtrl = new UsuarioController();

/**
 * Servico para salvar novo usuario
 */
routerUsuario.post('/', async (req, res) => {
    const { name, nick, email, about, profile_picture, password} = req.body;
    const usuario = new Usuario(name, nick, email, about, profile_picture, password);
    const usuarioSalvo = await usuarioCtrl.salvar(usuario);
    res.json(usuarioSalvo);
});

/**
 * Servico para recuperar um usuario pelo id
 */
routerUsuario.get('/:idUsuario', async (req, res) => {
    const  idUsuario  = parseInt (req.params.idUsuario);
    const usuarioPorId = await usuarioCtrl.recuperaPorId(idUsuario);
    res.json(usuarioPorId);
});

/**
 * Servico para atualizar dados do usuario
 */
