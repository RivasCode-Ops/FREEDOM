# Roadmap FREEDOM — Freedom4 FIRE Planner

Como decidir o que implementar: **bug → cálculo errado → clareza → feature nova**.

| Fase | Status | Foco |
|------|--------|------|
| V1 | Concluído | Regra 4%, simulador, presets, progresso |
| V2 | Concluído | IPCA, data FIRE, gráfico, Coast FIRE, launcher, SWR 3–5%, backup JSON |
| V2.1 | Concluído | Debounce, fórmula rápida prazo, reserva em meses, Parar/Verificar.bat |
| V3 | Em planejamento | Retenção, narrativa acionável, mais calculadoras |
| V4+ | Futuro | Sync, corretora, Monte Carlo |

---

## Próximas 5 ações (prioridade V3)

Use esta ordem. Só pule um item se o anterior estiver **estável e testado**.

| # | Ação | Problema que resolve | Critério de “pronto” | Issue |
|---|------|----------------------|----------------------|-------|
| 1 | **Histórico patrimonial** | Usuário só simula; não acompanha evolução | Registrar snapshot mensal; gráfico “patrimônio real vs meta”; persiste em `localStorage` | [rascunho](.github/issues/01-historico-patrimonial.md) |
| 2 | **Custo de um gasto** | “Quanto este gasto atrasa minha liberdade?” | Campo valor do gasto → meses/anos extras até FIRE; copy clara no hero | [rascunho](.github/issues/02-custo-de-um-gasto.md) |
| 3 | **Lean FIRE** | Meta mais enxuta (estilo frugal) | Calculadora ou preset com gasto ~60–70% do confortável; KPI dedicado | [rascunho](.github/issues/03-lean-fire.md) |
| 4 | **Barista FIRE** | Renda parcial + trabalho leve | Simular renda desejada menor + renda ativa até cobrir o gap | [rascunho](.github/issues/04-barista-fire.md) |
| 5 | **Exportar / importar CSV** | Backup e planilha | Botões export/import; colunas data, patrimônio, aporte | [rascunho](.github/issues/05-export-import-csv.md) |

### Criar as 5 issues no GitHub (1 minuto)

1. Abra [New issue → V3](https://github.com/RivasCode-Ops/FREEDOM/issues/new?template=v3-feature.yml) ou copie o texto de `.github/issues/0X-....md`.
2. Crie na ordem 1 → 5 e marque label `v3`.
3. Opcional no terminal (após `gh auth login`):

```bash
gh issue create --title "[V3] Historico patrimonial" --label v3 --body-file .github/issues/01-historico-patrimonial.md
gh issue create --title "[V3] Custo de um gasto" --label v3 --body-file .github/issues/02-custo-de-um-gasto.md
gh issue create --title "[V3] Lean FIRE" --label v3 --body-file .github/issues/03-lean-fire.md
gh issue create --title "[V3] Barista FIRE" --label v3 --body-file .github/issues/04-barista-fire.md
gh issue create --title "[V3] Exportar e importar CSV" --label v3 --body-file .github/issues/05-export-import-csv.md
```

### Não fazer agora (nice-to-have)

- Login / conta / sync em nuvem  
- Integração com corretora  
- Monte Carlo completo  
- Múltiplas moedas  

---

## Checklist mensal (15 min)

- [ ] `Iniciar-FREEDOM.bat` abre sem erro?  
- [ ] Um cenário real bate com planilha (±10–15%)?  
- [ ] Anotei 1 dúvida recorrente de usuário?  
- [ ] O topo do quadro acima ainda é a prioridade certa?  

---

## Referências externas

Catálogo completo (tags Adotar / Inspirar / Ignorar, mapeamento V3): **[docs/GITHUB-INSPIRACOES.md](docs/GITHUB-INSPIRACOES.md)** · índice do ecossistema: [workbench](https://github.com/RivasCode-Ops/workbench/blob/main/docs/GITHUB-INSPIRACOES-ECOSSISTEMA.md)

| Repo | Aprender |
|------|----------|
| [wealthyparrot/fire-calculator](https://github.com/wealthyparrot/fire-calculator) | Inflação, termos reais |
| [app-fire-calculator](https://github.com/jamesmontemagno/app-fire-calculator) | Várias calculadoras FIRE |
| [FARE](https://github.com/matijaoe/fare) | Tracking contínuo |
| [wenfire](https://github.com/basnijholt/wenfire) | Perguntas acionáveis |

---

## Como abrir uma nova ideia

1. Leia se já existe issue parecida.  
2. Use o template certo em **Issues → New issue**.  
3. Marque label: `bug` | `v3` | `nice-to-have`.
