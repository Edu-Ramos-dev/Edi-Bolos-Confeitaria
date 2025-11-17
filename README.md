<h1 align="center">Projeto de Desenvolvimento Web - Edi Bolos</h1>

<div align="center">
  <img src="Edi-bolos-Confeitaria/assets/img/image2.png" alt="Edi Bolos" width="500">
</div>

<h3>Descrição do Projeto</h3>
<p>Site dinâmico para divulgação e venda de produtos de confeitaria, com painel administrativo que permite ao cliente adicionar, editar e remover produtos sem necessidade de codificação. Projeto integrador do curso Técnico em Informática (Desenvolvimento de Sistemas).</p>

<h3>Integrantes</h3>
<ul>
  <li><a href="https://github.com/Edu-Ramos-dev">Eduardo (Eu)</a></li>
  <li><a href="https://github.com/GuilhermeHSV">Guilherme</a></li>
  <li><a href="https://github.com/GustavoSantos69">Gustavo</a></li>
  <li><a href="https://github.com/LucasFelippe011">Lucas</a></li>
  <li><a href="https://github.com/kaelton01">Caelton</a></li>
</ul>

<h3>Minha Contribuição</h3>
<p>Desenvolvimento do back-end e modelagem do banco de dados; participação em todas as fases (requisitos, implementação, testes e deploy local).</p>

<h3>Tecnologias e Ferramentas</h3>
<ul>
  <li><strong>Servidor local</strong>
    <ul>
      <li>XAMPP (Apache + MySQL) — ambiente de execução local e gerenciamento dos serviços</li>
    </ul>
  </li>
  <li><strong>Back-end</strong>
    <ul>
      <li>PHP (implementação das rotinas do servidor, controllers e integração com DB)</li>
    </ul>
  </li>
  <li><strong>Banco de Dados</strong>
    <ul>
      <li>MySQL (estrutura relacional, tabelas e scripts de inicialização)</li>
    </ul>
  </li>
  <li><strong>Front-end</strong>
    <ul>
      <li>HTML5</li>
      <li>CSS3</li>
      <li>JavaScript (validações e interações básicas)</li>
    </ul>
  </li>
  <li><strong>Bibliotecas / Frameworks / APIs</strong>
    <ul>
      <li>Bootstrap (layout responsivo)</li>
      <li>jQuery (manipulação DOM e requisições AJAX simples)</li>
      <li>Jivochat (chat online integrado)</li>
      <li>PWA (configurações básicas para comportamento progressivo)</li>
    </ul>
  </li>
  <li><strong>IDE / Ferramentas de desenvolvimento</strong>
    <ul>
      <li>VS Code</li>
      <li>Adobe Dreamweaver</li>
    </ul>
  </li>
  <li><strong>Metodologia</strong>
    <ul>
      <li>Scrum (iteração e organização das entregas)</li>
    </ul>
  </li>
</ul>

<h3>Requisitos</h3>
<ul>
  <li>XAMPP (versão compatível com PHP e MySQL utilizados)</li>
  <li>Arquivos do projeto: pasta <code>Edi-Bolos-Confeitaria</code> e arquivo SQL <code>bd_edibolos.sql</code> da pasta MySQL</li>
  <li>Editor de código (opcional): VS Code ou Dreamweaver</li>
</ul>

<h3>Passo a passo de implementação (deploy local)</h3>
<ol>
  <li><strong>Instalação do ambiente</strong>
    <ol>
      <li>Instalar XAMPP a partir do [instalador oficial.](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.2.12/xampp-windows-x64-8.2.12-0-VS16-installer.exe/download)</li>
      <li>Executar o painel de controle do XAMPP e iniciar os serviços <code>Apache</code> e <code>MySQL</code>.</li>
    </ol>
  </li>

  <li><strong>Criação/Importação do banco de dados</strong>
    <ol>
      <li>Abrir <strong>phpMyAdmin</strong> (normalmente em <code>http://localhost/phpmyadmin</code>).</li>
      <li>Criar um novo banco de dados ou usar a opção de importação para executar o script SQL. Em phpMyAdmin: clique em <em>Importar</em> e selecione <code>bd_edibolos.sql</code>. O script criará as tabelas e dados iniciais automaticamente.</li>
      <li>Alternativamente, importar via linha de comando MySQL:
        <pre><code>mysql -u root -p nome_do_banco &lt; bd_edibolos.sql</code></pre>
        (ajustar usuário/senha conforme configuração do MySQL local).
      </li>
    </ol>
  </li>

  <li><strong>Posicionamento dos arquivos no servidor local</strong>
    <ol>
      <li>Copiar a pasta do projeto <code>Edi-Bolos-Confeitaria</code> para a pasta <code>htdocs</code> do XAMPP (ex.: <code>C:\xampp\htdocs\Edi-Bolos-Confeitaria</code>).</li>
      <li>Verificar permissões de arquivos, se necessário (especialmente em Linux/macOS: ajustar proprietário e permissões para o usuário do servidor).</li>
    </ol>
  </li>

  <li><strong>Configuração de conexão com o banco</strong>
    <ol>
      <li>Abrir o arquivo de configuração de conexão (ex.: <code>conexao.php</code> ou <code>config.php</code>).</li>
      <li>Atualizar os parâmetros de conexão conforme o ambiente local:
        <pre><code>// exemplo
$host = 'localhost';
$db   = 'nome_do_banco';
$user = 'root';
$pass = ''; // padrão XAMPP é vazio
</code></pre>
      </li>
      <li>Testar a conexão via navegador acessando uma rota de teste ou um script PHP que executa um SELECT simples.</li>
    </ol>
  </li>

  <li><strong>Acesso à aplicação</strong>
    <ol>
      <li>Abrir o navegador e acessar: <code>http://localhost/Edi-Bolos-Confeitaria/</code> (ou o subdiretório correspondente).</li>
      <li>Se usar portas diferentes (ex.: Apache em 8080), ajustar a URL: <code>http://localhost:8080/Edi-Bolos-Confeitaria/</code>.</li>
    </ol>
  </li>

  <li><strong>Testes e verificação</strong>
    <ol>
      <li>Validar fluxos principais: listagem de produtos, cadastro/edição/remoção via painel administrativo, upload de imagens.</li>
      <li>Verificar logs do Apache e do PHP em caso de erro (XAMPP Control Panel → Logs).</li>
    </ol>
  </li>

  <li><strong>Observações e boas práticas</strong>
    <ul>
      <li>Alterar credenciais padrão do MySQL em ambientes de produção.</li>
      <li>Certificar-se de que a pasta de uploads possui permissão segura e validação de tipos de arquivo.</li>
      <li>Em caso de conflito de porta com outro serviço (IIS, Skype etc.), parar o serviço conflituoso ou alterar a porta do Apache no arquivo <code>httpd.conf</code>.</li>
    </ul>
  </li>
</ol>

<h3>Considerações Finais</h3>
<ul>
  <li>
      Projeto desenvolvido para um cliente real, porém com foco educacional, servindo como prática aplicada de desenvolvimento web full stack. Esse desenvolvimento contribuiu significativamente para o aprimoramento das minhas habilidades técnicas, experiência prática em ambiente real e compreensão completa do ciclo de desenvolvimento de sistemas.
  </li>
</ul>
