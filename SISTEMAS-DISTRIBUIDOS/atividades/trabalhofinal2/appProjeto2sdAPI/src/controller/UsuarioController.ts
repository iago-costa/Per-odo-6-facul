import { getManager } from "typeorm";
import { runInThisContext } from "vm";
import { Usuario } from "../entity/Usuario";

export class UsuarioController{
    async salvar(usuario: Usuario){
        const usuarioSalvo = await getManager().save(usuario);
        return usuarioSalvo;
    }

    async recuperaPorId(id: number){
        const usuario = await getManager().findOne(Usuario, id);
        return usuario;
    }
}