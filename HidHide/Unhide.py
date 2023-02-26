import subprocess


try:
  def cli():
    output = subprocess.Popen(
      "where HidHideCLI", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True, encoding="utf-8")

    return f'"{output.communicate()[0].strip()}"'

  HidHideCLI = cli()

  def run():
    output = subprocess.Popen(
      HidHideCLI + " --dev-list", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)

    return output.communicate()[0]

  def to_list(data):
    return data.decode("latin").replace("--dev-hide", "").replace('"', "").split()

  for data in to_list(run()):
    subprocess.Popen(HidHideCLI + f' --dev-unhide "{data}"')

except:
  pass
