//
//  ViewController.swift
//  FirebaseConfiguracao
//
//  Created by Carol Pinho on 17/12/21.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var textoLabel: UILabel!
    
    let firebase = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //criar usuario
//        Auth.auth().createUser(withEmail: "msantosjck@gmail.com", password: "anne123456") { usuario, erro in
//            if erro == nil { //sucesso
//                print("sucesso ao cadastrar usuario")
//            } else { //erro
//                print("erro ao cadastrar usuario : \(String(describing: erro?.localizedDescription))")
//
//            }
//        }
//
        
        //logar usuario
        Auth.auth().signIn(withEmail: "msantosjck@gmail.com", password: "anne123456") { usuario, erro in
            if erro == nil { //sucesso
                print("sucesso ao logar usuario")
            } else { //erro
                print("erro ao logar usuario: \(String(describing: erro?.localizedDescription))")

            }
        }
        
        
        //autenticacao
        Auth.auth().addStateDidChangeListener({ Auth, usuario in
            if let usuarioLogado = usuario {
                print("usuario logado" + String(describing: usuarioLogado.email))

            } else {
                print("usuario nao logado")
            }
        })
        
        
        
                
        //Login e logout de usuario
//        do{
//            try Auth.auth().signOut()
//        } catch {
//            print("erro ao deslogar usuario")
//        }
//
        
        

        
        //criar um nó no banco e recuperar valor
//        let usuario = firebase.child("usuario").child("nome")
//        //usuario.child("nome").setValue("carol")
//
//        usuario.observe(DataEventType.value, with: {( dados ) in
//            let nome = dados.value as! String
//            self.textoLabel.text = nome
//        })
    }
}

