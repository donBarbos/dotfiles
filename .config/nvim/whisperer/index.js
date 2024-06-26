const { spawn } = require("child_process");

module.exports = function (context) {
  const serverOptions = {
    command: "code-whisperer",
    args: ["--stdio"],
    options: {},
  };

  const clientOptions = {
    documentSelector: ["python"],
    synchronize: {
      configurationSection: "codeWhisperer",
    },
  };

  const disposable = context.subscriptions.push(
    context.coordinator.registerLanguageClient({
      id: "codeWhisperer",
      name: "Code Whisperer",
      serverOptions,
      clientOptions,
    })
  );

  return disposable;
};
