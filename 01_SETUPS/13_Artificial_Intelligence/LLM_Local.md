<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Open-Source LLMs Locally</title>
</head>
<body>

  <h2>Open-Source LLMs Locally</h2>

  <h4>Ollama</h4>

  <a href="https://ollama.com">https://ollama.com</a><br>
  <a href="https://github.com/ollama/ollama">https://github.com/ollama/ollama</a><br>
  
  <p>*Note: You should have at least 8 GB of RAM available to run the 7B models,
  16 GB to run the 13B models, and 32 GB to run the 33B models.</p>

  <table border="1" cellpadding="5" cellspacing="0">
    <tr>
      <th>Feature</th>
      <th>
        <a href="https://ollama.com" target="_blank">Ollama</a>
      </th>
      <th><a href="https://gpt4all.io" target="_blank">GPT4All</a></th>
      <th>
        <a href="https://github.com/imartinez/privateGPT" target="_blank">privateGPT</a>
      </th>
      <th>
        <a href="https://github.com/PromtEngineer/localGPT" target="_blank">localGPT</a>
      </th>
    </tr>
    <tr>
      <td>About</td>
      <td>
        Local large language model runner with a focus on simplicity and performance.
      </td>
      <td>
        Privacy-oriented software for chatting with large language models that
        run on your own computer.
      </td>
      <td>
        Interact with your documents using the power of GPT, 100% privately, no
        data leaks
      </td>
      <td>
        Chat with your documents on your local device using GPT models. No data
        leaves your device and 100% private.
      </td>
    </tr>
    <tr>
      <td>Resource Requirements</td>
      <td>
        - CPU: 4 cores recommended
        <br> - RAM: 8 GB for 7B models, 16 GB for 13B models, 32 GB for 33B
        models
        <br> - Disk: Varies by model size
        <br> - GPU: Optional, enhances performance
      </td>
      <td>
        - CPU: 4 cores recommended
        <br> - RAM: 16 GB recommended
        <br> - Disk: Varies by model size (10-50 GB)
        <br> - GPU: Optional, improves performance
      </td>
      <td>
        - CPU: 4 cores recommended
        <br> - RAM: 16 GB recommended
        <br> - Disk: 10-20 GB
        <br> - GPU: Optional, improves performance
      </td>
      <td>
        - CPU: 4 cores recommended
        <br> - RAM: 16 GB recommended
        <br> - Disk: Varies by model size (10-50 GB)
        <br> - GPU: Recommended for large models
      </td>
    </tr>
    <tr>
      <td>Installation Complexity</td>
      <td>Low - Simple setup with a focus on ease of use</td>
      <td>Medium - Requires downloading models and setting up environment</td>
      <td>Medium - Python environment setup and model downloading</td>
      <td>Medium - Requires setting up Python environment and dependencies</td>
    </tr>
    <tr>
      <td>Supported Models and Characteristics</td>
      <td>
        - LLaMA: Various sizes, focus on efficiency and scalability, custom licenses
      </td>
      <td>
        - GPT-3: 175B parameters, state-of-the-art performance, Apache 2.0
        <br> - GPT-J: 6B parameters, open-source alternative to GPT-3, Apache
        2.0
        <br> - GPT-Neo: 2.7B, 1.3B parameters, lightweight models, MIT
      </td>
      <td>
        - GPT-3: 175B parameters, high accuracy and versatility, Apache 2.0
        <br> - LLaMA: Various sizes, efficient and scalable, custom licenses
        (research use only)
      </td>
      <td>
        - GPT-3: 175B parameters, high accuracy and versatility, Apache 2.0
        <br> - GPT-Neo: 2.7B, 1.3B parameters, lightweight models, MIT
        <br> - BERT: Various sizes, strong at understanding context, Apache
        2.0
      </td>
    </tr>

    <tr>
      <td>Community Support</td>
      <td>
        - Support: Active - Community forums and GitHub
        <br> - Documentation: Detailed and user-friendly
      </td>
      <td>
        - Support: Active - Forums, GitHub issues, community forums
        <br> - Documentation: Comprehensive - Detailed setup and usage instructions
        available
      </td>
      <td>
        - Support: Active - GitHub discussions, community contributions
        <br> - Documentation: Good - Includes setup guide and usage examples
      </td>
      <td>
        - Support: Active - GitHub issues and community support
        <br> - Documentation: Good - Detailed README with setup and usage instructions
      </td>
    </tr>
    <tr>
      <td>License</td>
      <td>
        Custom License
        <br> - Requires attribution
        <br> - Commercial use allowed with restrictions
      </td>
      <td>
        Apache 2.0
        <br> - Allows commercial use
        <br> - Permissive, widely used
        <br> - Requires attribution and disclaimer
      </td>
      <td>
        MIT
        <br> - Highly permissive
        <br> - Allows commercial use
        <br> - No warranty or liability
      </td>
      <td>
        MIT
        <br> - Highly permissive
        <br> - Allows commercial use
        <br> - No warranty or liability
      </td>
    </tr>
  </table>

</body>
</html>