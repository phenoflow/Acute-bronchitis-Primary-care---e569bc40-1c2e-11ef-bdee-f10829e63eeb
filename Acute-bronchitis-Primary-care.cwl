cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  purulent-acute-bronchitis-primary-care---primary:
    run: purulent-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  acute-bronchitis-primary-care-rhinovirus---primary:
    run: acute-bronchitis-primary-care-rhinovirus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: purulent-acute-bronchitis-primary-care---primary/output
  acute-bronchitis-primary-care-influenzae---primary:
    run: acute-bronchitis-primary-care-influenzae---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-rhinovirus---primary/output
  acute-bronchitis-primary-care-mycoplasma---primary:
    run: acute-bronchitis-primary-care-mycoplasma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-influenzae---primary/output
  acute-bronchitis-primary-care-bronchiolitis---primary:
    run: acute-bronchitis-primary-care-bronchiolitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-mycoplasma---primary/output
  syncytial-acute-bronchitis-primary-care---primary:
    run: syncytial-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-bronchiolitis---primary/output
  pseudomembranous-acute-bronchitis-primary-care---primary:
    run: pseudomembranous-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: syncytial-acute-bronchitis-primary-care---primary/output
  acute-bronchitis-primary-care-echovirus---primary:
    run: acute-bronchitis-primary-care-echovirus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: pseudomembranous-acute-bronchitis-primary-care---primary/output
  infective-acute-bronchitis-primary-care---primary:
    run: infective-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-echovirus---primary/output
  bacterial-acute-bronchitis-primary-care---primary:
    run: bacterial-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: infective-acute-bronchitis-primary-care---primary/output
  echoviral-acute-bronchitis-primary-care---primary:
    run: echoviral-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: bacterial-acute-bronchitis-primary-care---primary/output
  acute-bronchitis-primary-care-specified---primary:
    run: acute-bronchitis-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: echoviral-acute-bronchitis-primary-care---primary/output
  wheezy-acute-bronchitis-primary-care---primary:
    run: wheezy-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-specified---primary/output
  acute-bronchitis-primary-care-infection---primary:
    run: acute-bronchitis-primary-care-infection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: wheezy-acute-bronchitis-primary-care---primary/output
  acute-bronchitis-primary-care-organism---primary:
    run: acute-bronchitis-primary-care-organism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-infection---primary/output
  coxsackieviral-acute-bronchitis-primary-care---primary:
    run: coxsackieviral-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-organism---primary/output
  croupous-acute-bronchitis-primary-care---primary:
    run: croupous-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: coxsackieviral-acute-bronchitis-primary-care---primary/output
  fibrinous-acute-bronchitis-primary-care---primary:
    run: fibrinous-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: croupous-acute-bronchitis-primary-care---primary/output
  streptococcal-acute-bronchitis-primary-care---primary:
    run: streptococcal-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: fibrinous-acute-bronchitis-primary-care---primary/output
  chlamydial-acute-bronchitis-primary-care---primary:
    run: chlamydial-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: streptococcal-acute-bronchitis-primary-care---primary/output
  acute-bronchitis-primary-care-catarrhal---primary:
    run: acute-bronchitis-primary-care-catarrhal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: chlamydial-acute-bronchitis-primary-care---primary/output
  pneumococcal-acute-bronchitis-primary-care---primary:
    run: pneumococcal-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-catarrhal---primary/output
  acute-bronchitis-primary-care-chest---primary:
    run: acute-bronchitis-primary-care-chest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: pneumococcal-acute-bronchitis-primary-care---primary/output
  acute-bronchitis-primary-care-tracheobronchitis---primary:
    run: acute-bronchitis-primary-care-tracheobronchitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-chest---primary/output
  chemical-acute-bronchitis-primary-care---primary:
    run: chemical-acute-bronchitis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-tracheobronchitis---primary/output
  acute-bronchitis-primary-care-pneumonitis---primary:
    run: acute-bronchitis-primary-care-pneumonitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: chemical-acute-bronchitis-primary-care---primary/output
  acute-bronchitis-primary-care-pneumoniae---primary:
    run: acute-bronchitis-primary-care-pneumoniae---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-pneumonitis---primary/output
  acute-bronchitis-primary-care-aspergillus---primary:
    run: acute-bronchitis-primary-care-aspergillus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-pneumoniae---primary/output
  acute-bronchitis-primary-care-history---primary:
    run: acute-bronchitis-primary-care-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-aspergillus---primary/output
  acute-bronchitis-primary-care-moraxella---primary:
    run: acute-bronchitis-primary-care-moraxella---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-history---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: acute-bronchitis-primary-care-moraxella---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
