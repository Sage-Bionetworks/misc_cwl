#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

baseCommand: [wget]

requirements:
  - class: InlineJavascriptRequirement

inputs:

  input:
    type: url
    inputBinding:
      position: 1

outputs:

  output:
    type: File
    outputBinding:
      glob: $(inputs.input.split("/").slice(-1))