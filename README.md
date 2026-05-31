# FREEDOM — Freedom4 FIRE Planner

Protótipo web de planejamento de independência financeira (FIRE), com calculadora da regra dos 4%, simulador de acúmulo e comparativo de cenários.

Repositório: [RivasCode-Ops/FREEDOM](https://github.com/RivasCode-Ops/FREEDOM)

**Roadmap e prioridades:** [ROADMAP.md](ROADMAP.md) · **Novas issues:** [Issues → New issue](https://github.com/RivasCode-Ops/FREEDOM/issues/new/choose)

**Pitch:** [pitch-deck.html](pitch-deck.html) · `Abrir-Pitch.bat` · PDF: `Exportar-Pitch-PDF.bat`  
**LinkedIn / vídeo:** [divulgacao-linkedin-video.html](divulgacao-linkedin-video.html) · `Abrir-Divulgacao.bat` · [conteudo-divulgacao.md](conteudo-divulgacao.md)  
**Inventário:** [../inventario-projetos.html](../inventario-projetos.html)

## Funcionalidades

### V1
- **Regra dos 4%** — patrimônio alvo = gasto anual ÷ 0,04
- **Estilos de vida** — presets Básica, Confortável e Luxuosa
- **Sliders** — aporte extra e antecipação de prazo

### V2
- **IPCA / termos reais** — retorno real `(1+r)/(1+i)−1`, meta em valores de hoje
- **Data prevista FIRE** — mês/ano estimado de independência
- **Gráfico temporal** — evolução do patrimônio até a meta
- **Coast FIRE** — patrimônio mínimo hoje para atingir a meta sem novos aportes até a idade alvo
- **Cenários** — pessimista / realista / otimista com IPCA e data FIRE
- **Navegação** — sidebar com scroll para cada seção

## Uso local (sem Cursor, sem instalar nada)

**Duplo clique em `Iniciar-FREEDOM.bat`** — sobe o servidor e abre `http://127.0.0.1:8765/`.

| Arquivo | O que faz |
|---------|-----------|
| **`Iniciar-FREEDOM.bat`** | Servidor local + navegador (recomendado) |
| **`Iniciar-FREEDOM-direto.bat`** | Abre `index.html` sem servidor (fallback) |
| **`Iniciar-com-servidor.bat`** | Igual ao launcher principal |
| **`Criar-atalho-Area-de-Trabalho.bat`** | Atalho na Área de Trabalho |
| **`LEIA-ME.txt`** | Instruções rápidas em português |

Seus dados são salvos no navegador (`localStorage`). Funciona **offline** após a primeira abertura.

## GitHub Pages

1. Em **Settings → Pages**, defina **Source** como branch `main` e pasta `/ (root)`.
2. O site ficará em `https://rivascode-ops.github.io/FREEDOM/`.

## Estrutura

| Arquivo | Descrição |
|---------|-----------|
| `index.html` | App completo (HTML, CSS e JS em um único arquivo) |
| `freedom4-fire-app.html` | Cópia sincronizada do app |
| `Iniciar-FREEDOM.bat` | Launcher Windows (recomendado) |
| `Iniciar-com-servidor.bat` | Servidor HTTP local opcional |
| `Servidor-local.ps1` | Script do servidor (porta 8765) |

## Aviso

Ferramenta educativa. Não constitui recomendação de investimento.
