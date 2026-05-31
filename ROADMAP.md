# Roadmap FREEDOM — Freedom4 FIRE Planner

Como decidir o que implementar: **bug → cálculo errado → clareza → feature nova**.

| Fase | Status | Foco |
|------|--------|------|
| V1 | Concluído | Regra 4%, simulador, presets, progresso |
| V2 | Concluído | IPCA, data FIRE, gráfico, Coast FIRE, launcher local |
| V3 | Em planejamento | Retenção, narrativa acionável, mais calculadoras |
| V4+ | Futuro | Sync, corretora, Monte Carlo |

---

## Próximas 5 ações (prioridade V3)

Use esta ordem. Só pule um item se o anterior estiver **estável e testado**.

| # | Ação | Problema que resolve | Critério de “pronto” | Issue |
|---|------|----------------------|----------------------|-------|
| 1 | **Histórico patrimonial** | Usuário só simula; não acompanha evolução | Registrar snapshot mensal; gráfico “patrimônio real vs meta”; persiste em `localStorage` | [#1](https://github.com/RivasCode-Ops/FREEDOM/issues/1) |
| 2 | **Custo de um gasto** | “Quanto este gasto atrasa minha liberdade?” | Campo valor do gasto → meses/anos extras até FIRE; copy clara no hero | [#2](https://github.com/RivasCode-Ops/FREEDOM/issues/2) |
| 3 | **Lean FIRE** | Meta mais enxuta (estilo frugal) | Calculadora ou preset com gasto ~60–70% do confortável; KPI dedicado | [#3](https://github.com/RivasCode-Ops/FREEDOM/issues/3) |
| 4 | **Barista FIRE** | Renda parcial + trabalho leve | Simular renda desejada menor + renda ativa até cobrir o gap | [#4](https://github.com/RivasCode-Ops/FREEDOM/issues/4) |
| 5 | **Exportar / importar CSV** | Backup e planilha | Botões export/import; colunas data, patrimônio, aporte | [#5](https://github.com/RivasCode-Ops/FREEDOM/issues/5) |

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
