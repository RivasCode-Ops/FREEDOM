# FREEDOM vs apps similares — lacunas e melhorias

## Já no FREEDOM (V2+)

| Recurso | Status |
|---------|--------|
| Regra 4% / SWR ajustável (3–5%) | Sim |
| Simulador juros compostos (fórmula fechada) | Sim |
| IPCA + retorno real | Sim |
| Data FIRE + idade estimada | Sim |
| Coast FIRE | Sim |
| Cenários pessimista/realista/otimista | Sim |
| Sensibilidade SWR 3/4/5% | Sim |
| Gráfico patrimônio | Sim |
| Backup JSON export/import | Sim |
| Launcher local sem Cursor | Sim |
| Offline (sem CDN) | Sim |

## Falta vs apps maduros (prioridade)

| Lacuna | Referência | Fase |
|--------|------------|------|
| Histórico mensal patrimônio | FARE | V3 #1 |
| “Custo de um gasto” em meses | wenfire | V3 #2 |
| Lean / Barista FIRE | app-fire-calculator | V3 #3–4 |
| CSV + planilha | wealthyparrot | V3 #5 |
| Monte Carlo / faixas de risco | retirement-calculator | V4 |
| Multi-moeda / pensão estatal | wealthyparrot | V4 |
| Sync corretora | FARE | V4 |

## Organização do repositório

| Item | Status |
|------|--------|
| `Iniciar-FREEDOM.bat` | Sim |
| `Parar-FREEDOM.bat` | Sim |
| `Verificar-FREEDOM.bat` | Sim |
| `Sincronizar-app.bat` | Sim |
| `ROADMAP.md` + issue templates | Sim |
| Testes automatizados | Não (app estático) |
| Um único `index.html` canônico | `freedom4-fire-app.html` = cópia via script |

## Desempenho

- Debounce 120ms nos inputs (menos redraw do gráfico).
- `monthsToGoal` por fórmula (O(1) vs loop 1200 meses).
- Gráfico amostrado (~80 pontos máx).
