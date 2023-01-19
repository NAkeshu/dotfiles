# Auto-activate current environment
# if there is "Manifest.toml" in the folder
# or now is in a Julia project folder.
if "Manifest.toml" in readdir(".") || issubset(["src", "Project.toml"], readdir())
    using Pkg
    Pkg.activate(".")
end

# multi-threads
ENV["JULIA_NUM_THREADS"] = "auto"

# set path of conda & py
ENV["CONDA_JL_NAME"] = "cv"
ENV["CONDA_JL_HOME"] = ENV["HOME"] * "/miniconda3/envs/" * ENV["CONDA_JL_NAME"]
ENV["CONDA_JL_CONDA_EXE"] = ENV["HOME"] * "/miniconda3/bin/conda"
ENV["PYTHON"] = ENV["HOME"] * "/miniconda3/envs/" * ENV["CONDA_JL_NAME"] * "/bin/python"

