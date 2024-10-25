#criando
create schema EST_CASO_III;

#selecionando e usando o schema
use EST_CASO_III;

# criando a tabela tipo de endereço, que classifica os diferentes tipos de endereços
create table if not exists tipo_endereco(
codtipo_end int primary key,
nome_tipoend varchar(35) not null # nome do tipo de endereco
);

create table if not exists enderecos(
id_endereco int primary key,
cep varchar (14) not null,
logradouro varchar (30) not null,
cidade varchar (45) not null,
bairro varchar (45) not null,
complemeto varchar (45) not null,
numero int not null,
uf varchar (10) not null,
tipo_end int not null, # classificando tipos de endereços
constraint tipo_d_endereco FOREIGN KEY (tipo_end) references tipo_endereco(codtipo_end)
);

# representa os recursos específicos necessários para fabricar determinados produtos #
create table if not exists recursos_espec(
id_re int primary key,
data_re date not null,
descricao_re text not null
);

# garante que os materiais estejam disponíveis no momento certo 
create table if not exists regist_supri(
id_rs int primary key,
quantnecess_rs int not null,  #quantidade necessaria
uni_rs varchar(10) not null,
tempouso_rs date not null,
horasmdo_rs date not null  # horas de mao de obra
);

# registra as manutenções realizadas nas máquinas e equipamentos
create table if not exists regist_manuntencao(
id_manun int primary key,
data_manunt date not null,
desc_manunt text not null
);

#criando a tabela clientes
create table if not exists clientes(
cod_cli int primary key,
cnpj_cli varchar(14) not null,
razaosocial_cli varchar (35) not null,
ramo_ativ_cli text not null,
data_cadastro date not null,
tel_cli varchar (12) not null,
pessoacontat_cli varchar (35) not null, #pessoa de contato
end_cli int not null, # relacionando clientes e seus endereços
constraint endereco_cli FOREIGN KEY (end_cli) references enderecos(id_endereco)
);

#criando a tabela clientes
create table if not exists empregados(
matricula_empg int primary key,
nome_empg varchar(35) not null,
cargo_empg text not null,
salario_empg DECIMAL(10, 2) not null,
data_adm_empg date not null,
tel_empg varchar (12) not null,
qualifi_empg varchar(20) not null, #qualificação
end_empg int not null, # relacionando empregados e seus endereços
constraint endereco_empg FOREIGN KEY (end_empg) references enderecos(id_endereco)
);

create table if not exists empresas(
cnpj_empsa int primary key,
razaosocial_empsa varchar (35) not null,
pessoacontat_empsa varchar (35) not null, # pessoa de contato
tel_empsa varchar(12) not null,
end_empsa int not null, # relacionando empresas e seus endereços
constraint endereco_empsa FOREIGN KEY (end_empsa) references enderecos(id_endereco)
);

create table if not exists fornecedores(
cnpj_forn int primary key,
razaosocial_forn varchar (35) not null,
pessoacontat_forn varchar (35) not null, # pessoa de contato
tel_forn varchar(12) not null,
end_forn int not null, # relacionando fornecedores e seus endereços
constraint endereco_forn FOREIGN KEY (end_forn) references enderecos(id_endereco)
);

create table if not exists encomenda(
cod_enco int primary key,
data_inclu date not null,
valor_total DECIMAL(10, 2) not null,
valor_descont DECIMAL(10, 2) not null,
valor_liqui DECIMAL(10, 2) not null,
forma_pag ENUM('Cartão de Crédito', 'Boleto', 'Transferência Bancária', 'PIX'),
quant_parcelas int not null
);

# classifica os diferentes tipos de componentes
create table if not exists tipo_componente( 
cod_identifi int primary key,
nome_tipocomp varchar(40) not null
);

create table if not exists produtos(
cod_prod int primary key,
nome_prod varchar(40) not null,
cor_prod text,
dimens_prod DECIMAL(10, 2) not null,
peso_prod DECIMAL(10, 2) not null,
preco_prod DECIMAL(10, 2) not null,
tempfab_prod datetime not null,
desenho_prod varchar(50) not null,
horasmdo_prod time not null, # horas de mao de obra
identificador int not null, # classificando o tipo de componente no produto
recursos int not null,  # relacionando recursos específicos necessários para fabricação do produto
registros_supri int not null, # relacionando registro dos suprimentos necessários para a produção do produto
constraint fk_identi FOREIGN KEY (identificador) 
references tipo_componente(cod_identifi),
constraint fk_recursos FOREIGN KEY (recursos) 
references recursos_espec(id_re),
constraint fk_reg_supri FOREIGN KEY (registros_supri) 
references regist_supri(id_rs)  
);


create table if not exists componente(
cod_comp int primary key,
nome_comp varchar(40) not null,
quantest_comp int not null,  # quantidade em estoque
uni_comp varchar(10) not null, 
precouni_comp decimal(10,2) not null, # preco unitario
tipo_compo int not null,  # classificando os diferentes tipos de componentes
constraint fk_tip0 FOREIGN KEY (tipo_compo) 
references tipo_componente(cod_identifi)  
);

create table if not exists maquinas(
id_maq int primary key,
tempovida_maq date not null,
datacompra_maq date not null,  # data da compra da maquina
data_fimgarant_maq date not null, # data fim da garantia da maquina
maqui_manuntencao int not null,  #relacionando com a manuntenção para registrar as manutenções realizadas
constraint fk_maquimanun FOREIGN KEY (maqui_manuntencao) 
references regist_manuntencao(id_manun) 
);


# ---- ENTIDADES ASSOCIATIVAS  ---- #

create table if not exists clientes_encomendas( #encomendas feitas por clientes
clientes_codig int,
encomendas_codig int,
constraint fk_cliente2 FOREIGN KEY (clientes_codig) 
references clientes(cod_cli),
constraint fk_encomenda FOREIGN KEY (encomendas_codig) 
references encomenda(cod_enco)
);

create table if not exists forn_fornecem_comp(  #fornecedores e os componentes que fornecem
cnpj_fornecedor int,
cod_componente int,
constraint fk_fornece2 FOREIGN KEY (cnpj_fornecedor) 
references fornecedores(cnpj_forn),
constraint fk_codcomp FOREIGN KEY (cod_componente) 
references componente(cod_comp)
);

create table if not exists prod_utilzam_comp( # produtos e os componentes utilizados
cod_de_produto int not null,
cod_de_comp int not null,
constraint fk_codeprodut FOREIGN KEY (cod_de_produto) 
references produtos(cod_prod),
constraint fk_codc0mp FOREIGN KEY (cod_de_comp) 
references componente(cod_comp)
);

create table if not exists prod_transp_enco(  # produtos transportam encomendas
cod_d_produto int not null, 
cod_d_encomenda int not null,
constraint fk_codprodut0 FOREIGN KEY (cod_d_produto) 
references produtos(cod_prod),
constraint fk_codenc0 FOREIGN KEY (cod_d_encomenda) 
references encomenda(cod_enco)
);

create table if not exists maq_fabricam_prod(  # maquinas fabricam produtos
maqui_id int not null,
prod int not null, 
constraint fk_maqui FOREIGN KEY (maqui_id) 
references maquinas(id_maq),
constraint fk_prod FOREIGN KEY (prod) 
references produtos(cod_prod)
);

create table if not exists emprg_produzem_prod( # empregados produzem produtos
empregado int not null,
produtos_prod int not null,
constraint fk_empreg FOREIGN KEY (empregado) 
references empregados(matricula_empg),
constraint fk_produ_pr FOREIGN KEY (produtos_prod) 
references produtos(cod_prod)
);

drop schema EST_CASO_III;