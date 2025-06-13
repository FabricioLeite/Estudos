stateDiagram-v2
direction LR
  [*] --> mainState: transition
  state mainState {
    direction LR
    [*] --> subState
    state subState {
      direction LR
      [*] --> subSubState
      subSubState --> [*]
    }
    subState --> [*]
  }
  mainState --> [*]