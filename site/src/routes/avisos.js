var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.get("/", function (req, res) {
    avisoController.testar(req, res);
});

router.get("/listar", function (req, res) {
    avisoController.listar(req, res);
});


// alterações
router.get("/abstrato", function (req, res) {
    avisoController.abstrato(req, res);
});

router.get("/impressionismo", function (req, res) {
    avisoController.impressionismo(req, res);
});

router.get("/renascentista", function (req, res) {
    avisoController.renascentista(req, res);
});

router.get("/outros", function (req, res) {
    avisoController.outros(req, res);
});
// finalização das alterações dos gráficos




router.get("/listar/:idUsuario", function (req, res) {
    avisoController.listarPorUsuario(req, res);
});

router.get("/pesquisar/:descricao", function (req, res) {
    avisoController.pesquisarDescricao(req, res);
});

router.post("/publicar/:idUsuario", function (req, res) {
    avisoController.publicar(req, res);
});

router.put("/editar/:idComentario", function (req, res) {
    avisoController.editar(req, res);
});

router.delete("/deletar/:idComentario", function (req, res) {
    avisoController.deletar(req, res);
});

module.exports = router;