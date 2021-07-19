import {Entity, PrimaryGeneratedColumn, Column} from "typeorm";

@Entity()
export class Usuario {
    constructor(name: string, nick: string, email: string, about: string, profile_picture: string, password: number){
        this.name = name;
        this.nick = nick;
        this.email = email;
        this.about = about;
        this.profile_picture = profile_picture;
        this.password = password;
    }

    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    name: string;

    @Column()
    nick: string;

    @Column()
    email: string;

    @Column()
    about: string;

    @Column()
    profile_picture: string;

    @Column()
    password: number;

}
