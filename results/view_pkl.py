import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_pickle("validation.pkl")

band_cols= sorted(
  [c for c in df.columns if c.startswith('B') and c[1:].isdigit()],
  key=lambda c: int(c[1:]),
)

values = df[band_cols]
nrows = len(values)

plt.figure(figsize = (14,5))
for i in range(nrows):
  plt.plot(range(len(band_cols)), values.iloc[i].values, linewidth=0.5, alpha=0.3)

plt.xlabel('Band')
plt.ylabel('Reflectance')
plt.savefig("reflectance.png")
