{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "task_system Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_SYST_CTRL_ON\n    in event EV_SYST_CTRL_OFF\n    in event EV_SYST_PACK_IN\n    in event EV_SYST_PACK_OUT\n    in event EV_SYST_SETUP_ON\n    in event EV_SYST_SETUP_OFF\n    in event EV_SYST_NO_PACKS\n    in event\n        EV_SETUP_ENTER\n    in event \n        EV_SETUP_ESCAPE\n    in event \n        EV_SETUP_NEXT\n\ninternal:\n    var qty_packs \n        :integer\n    var speed\n        :integer\n    var packs_change_speed :integer\n    var option\n        :integer\n    var waiting_time\n        :integer\n     var tick\n        :integer\n        \n    const DEL_MAX_PACKS\n        :integer = 10\n    const DEL_MAX_SPEED :integer = 20\n    const DEL_MAX_WAITING_TIME :integer = 30"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -2511,
          "y": -514
        },
        "size": {
          "height": 1237,
          "width": 3389
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1561,
        "id": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "embeds": [
          "0f5c476e-c494-4ae8-82a9-7e82e841cb0f",
          "1363adfd-1be4-4395-be04-756a76be4eee",
          "00983a02-3e2a-487c-8d6d-d9d3c9a6ab7c",
          "541ac5b5-5adc-4742-b0f8-4ac4a1abab1b",
          "513dbc09-c512-4748-82a0-d0477d6828a5",
          "e91159b4-5ab9-4c9f-ae97-d474e7cc313d",
          "d76c515b-3bb4-4be4-b370-bd1ec7352836",
          "a83723a9-a596-4192-9139-0059c65081f6",
          "05da23a5-3f00-4deb-bd78-af705b6f0d14",
          "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "a2af5b35-99aa-49ab-8dbb-df91cd6de2ba",
          "60021f91-4416-4dda-99c1-77ad4e913aa7",
          "afe39e64-968f-400e-a9b0-df74afd88fff",
          "99b92bea-7674-4830-8916-5ad5474e33e8",
          "cd493469-b71f-4d60-9e0e-20b7df2c0fa8"
        ],
        "attrs": {
          "priority": {
            "text": 1,
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -2245,
          "y": -42
        },
        "size": {
          "height": 103,
          "width": 124
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "z": 1562,
        "id": "d76c515b-3bb4-4be4-b370-bd1ec7352836",
        "attrs": {
          "name": {
            "text": "ST_SYST_IDLE",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -2370,
          "y": 2
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 1563,
        "id": "a83723a9-a596-4192-9139-0059c65081f6",
        "embeds": [
          "de83bf6b-d6c4-40a2-8d40-c8837324b0c2"
        ],
        "attrs": {
          "name": {
            "fill": "#CFD8DC"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -801,
          "y": -251.41666412353516
        },
        "size": {
          "height": 928,
          "width": 1662
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "z": 1564,
        "id": "05da23a5-3f00-4deb-bd78-af705b6f0d14",
        "embeds": [
          "858de3e4-74be-4e25-8423-dc18c86783d5"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYST_SETUP",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -1533.5,
          "y": -46
        },
        "size": {
          "height": 270,
          "width": 160
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "z": 1565,
        "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
        "embeds": [
          "8fca23ca-e47e-40c6-a6d2-37d571196997",
          "5ffc89d9-6f4c-4589-823e-0c215490cfc9",
          "44fee959-ecab-472c-87eb-18e7ccacc2ea",
          "76b438c8-0ff8-4c13-a566-12dc91038b82",
          "927001b4-96fd-4e4a-a4dd-fb4a1a3205ad",
          "c624ff8c-9ca1-403b-a57a-9a01bb18c116"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYST_CTRL",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -1156,
          "y": -147
        },
        "size": {
          "width": 348.4062805175781,
          "height": 60
        },
        "angle": 0,
        "linkable": false,
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "z": 1566,
        "id": "a2af5b35-99aa-49ab-8dbb-df91cd6de2ba",
        "attrs": {
          "label": {
            "text": "Si el modulo da 0, significa que es multiplo\npor la cantidad de paquetes que hay que agregar\npara subir/bajar la velocidad"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -1115.0000610351562,
          "y": 224
        },
        "size": {
          "width": 226.01052856445312,
          "height": 62.5
        },
        "angle": 0,
        "linkable": false,
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "z": 1567,
        "id": "60021f91-4416-4dda-99c1-77ad4e913aa7",
        "attrs": {
          "label": {
            "text": "Si pasó el tiempo de espera,\nse apaga el sistema de control\n"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -1817,
          "y": 208.58333587646484
        },
        "size": {
          "width": 269.20196533203125,
          "height": 60
        },
        "angle": 0,
        "linkable": false,
        "z": 1568,
        "id": "afe39e64-968f-400e-a9b0-df74afd88fff",
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "attrs": {
          "label": {
            "text": "Con los else la programacion\nes mas facil, en vez de hacer tantos\nif's."
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -2183,
          "y": 286.5
        },
        "size": {
          "width": 449.2607727050781,
          "height": 104
        },
        "angle": 0,
        "linkable": false,
        "z": 1569,
        "id": "99b92bea-7674-4830-8916-5ad5474e33e8",
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "attrs": {
          "label": {
            "text": "El sistema se inicializa con unos parametros por default.\n\nSi se quisieran cambiar, se debe entrar al menu SETUP para\nconfigurar"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -2204,
          "y": -413
        },
        "size": {
          "width": 282,
          "height": 88
        },
        "angle": 0,
        "linkable": false,
        "z": 1570,
        "id": "cd493469-b71f-4d60-9e0e-20b7df2c0fa8",
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "attrs": {
          "label": {
            "text": "MODO NORMAL: Monitorea y controla de \nmanera segura el ingreso/egreso a/de\nla cinta, en forma segura."
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -2370,
          "y": 17
        },
        "parent": "a83723a9-a596-4192-9139-0059c65081f6",
        "z": 1577,
        "id": "de83bf6b-d6c4-40a2-8d40-c8837324b0c2",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": 0,
            "refY": 0,
            "textVerticalAnchor": "top",
            "textAnchor": "start"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -800,
          "y": -229.62120819091797
        },
        "size": {
          "height": 905.2045440673828,
          "width": 1660
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1578,
        "id": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "embeds": [
          "bbc555dd-db82-44db-9126-2cc349cb9457",
          "257202e4-eabd-4542-85d6-e71986a11c29",
          "5b8f9ede-cd9e-4bbe-b8e7-d4406d0018cd",
          "ae5e8093-36cc-47e3-9415-177554637695",
          "582c70a6-8998-47c9-a26e-63cbcddc0119",
          "127db53f-d370-497f-b342-f13a5e937deb",
          "280a21d4-a82f-45c2-aa68-aca0fea63f01",
          "caf38c87-9838-4b6f-8d49-0d350eace7e5",
          "9a263ce6-a38d-49b1-b16d-4b08ae679734",
          "f26d9621-66b7-48d8-83a8-d86c9c34d2f4"
        ],
        "parent": "05da23a5-3f00-4deb-bd78-af705b6f0d14",
        "attrs": {
          "priority": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -458,
          "y": -178.4128761291504
        },
        "size": {
          "width": 399.662109375,
          "height": 60
        },
        "angle": 0,
        "linkable": false,
        "parent": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "z": 1585,
        "id": "127db53f-d370-497f-b342-f13a5e937deb",
        "attrs": {
          "label": {
            "text": "Modo SETUP: Permite leer y modificar los parámetros de\noperacion del Sistema de Control"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -734,
          "y": 129
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 1586,
        "id": "280a21d4-a82f-45c2-aa68-aca0fea63f01",
        "embeds": [
          "5b990479-e0c7-4a04-a828-523d4b6ccec4"
        ],
        "parent": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "attrs": {
          "name": {
            "fill": "#CFD8DC"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -478,
          "y": 49.083335876464844
        },
        "size": {
          "height": 435,
          "width": 198
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1587,
        "id": "caf38c87-9838-4b6f-8d49-0d350eace7e5",
        "embeds": [
          "b8f04632-fc7d-4c62-94da-01b39d8a6f48",
          "7380dcab-2cc8-44b3-9210-7ac9aabced80"
        ],
        "parent": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "attrs": {
          "body": {
            "customColor": null
          },
          "name": {
            "text": "ST_SETUP_INIT_MENU",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 271,
          "y": 368
        },
        "size": {
          "height": 144,
          "width": 225
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1588,
        "id": "9a263ce6-a38d-49b1-b16d-4b08ae679734",
        "embeds": [
          "ea4425ba-67ac-4728-a73f-f2e544c3dfca",
          "520d36eb-effe-4cb7-bb9a-dd15c4ba8a36"
        ],
        "parent": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "attrs": {
          "name": {
            "text": "ST_SETUP_MENU_WAITING_TIME",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 200.5,
          "y": -43.5
        },
        "size": {
          "height": 118,
          "width": 237.64584350585938
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1589,
        "id": "f26d9621-66b7-48d8-83a8-d86c9c34d2f4",
        "embeds": [
          "bc16da51-9262-488e-a8e1-8db79f55f042",
          "4d23c75d-d6d0-4a3f-baca-13ed880fbd5b"
        ],
        "parent": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "attrs": {
          "name": {
            "text": "ST_SETUP_MENU_PACKS_LIM",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -734,
          "y": 144
        },
        "parent": "280a21d4-a82f-45c2-aa68-aca0fea63f01",
        "z": 1595,
        "id": "5b990479-e0c7-4a04-a828-523d4b6ccec4",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": 0,
            "refY": 0,
            "textVerticalAnchor": "top",
            "textAnchor": "start"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 112,
              "dy": 58.5
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_PACK_IN [((qty_packs % packs_change_speed) == 0)\n&& (speed > 0) \n&& (qty_packs < DEL_MAX_PACKS)]\n/ speed--; qty_packs++"
              }
            },
            "position": {
              "distance": 0.4381317414924745,
              "offset": 218.2981476740458,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
        "vertices": [
          {
            "x": -1331,
            "y": 44.5
          }
        ],
        "z": 1596,
        "id": "5ffc89d9-6f4c-4589-823e-0c215490cfc9",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 1.5,
              "dy": 12
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 7.5,
              "dy": 34
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_PACK_OUT \n[((qty_packs % packs_change_speed) == 0)\n&& (speed < DEL_MAX_SPEED) \n&& (qty_packs > 0)]\n/ speed++; qty_packs--"
              }
            },
            "position": {
              "distance": 0.47619017809117414,
              "offset": 58.46544856810584,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
        "vertices": [
          {
            "x": -1591,
            "y": -34
          },
          {
            "x": -1642,
            "y": -12
          }
        ],
        "z": 1596,
        "id": "927001b4-96fd-4e4a-a4dd-fb4a1a3205ad",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 114.5,
              "dy": 27
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 81.5,
              "dy": 4
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_PACK_IN \n[qty_packs < DEL_MAX_PACKS] \n/ qty_packs++"
              }
            },
            "position": {
              "distance": 0.7465577566623602,
              "offset": -106.4593505859375,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "5",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
        "vertices": [
          {
            "x": -1387,
            "y": -78
          }
        ],
        "z": 1596,
        "id": "c624ff8c-9ca1-403b-a57a-9a01bb18c116",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 6.5,
              "dy": 86
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_PACK_OUT \n[(qty_packs > 0)]\n/ qty_packs--"
              }
            },
            "position": {
              "distance": 0.6144760198277855,
              "offset": 44.5816650390625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "6",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
        "vertices": [
          {
            "x": -1625,
            "y": 16
          }
        ],
        "z": 1596,
        "id": "76b438c8-0ff8-4c13-a566-12dc91038b82",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 99.5,
              "dy": 225
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 147.5,
              "dy": 172
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_NO_PACKS[(tick == waiting_time) && (qty_packs == 0)]\n/ raise EV_SYST_CTRL_OFF"
              }
            },
            "position": {
              "distance": 0.47050325458954406,
              "offset": 238,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "7",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
        "vertices": [
          {
            "x": -1303,
            "y": 179
          }
        ],
        "z": 1596,
        "id": "44fee959-ecab-472c-87eb-18e7ccacc2ea",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 132.5,
              "dy": 260
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_NO_PACKS[qty_packs == 0]\n/ tick++"
              }
            },
            "position": {
              "distance": 0.5617924705857479,
              "offset": 80.98127686310293,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "8",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
        "vertices": [
          {
            "x": -1401,
            "y": 236
          },
          {
            "x": -1334,
            "y": 268
          }
        ],
        "z": 1596,
        "id": "8fca23ca-e47e-40c6-a6d2-37d571196997",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f26d9621-66b7-48d8-83a8-d86c9c34d2f4"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 183,
              "dy": 110.85069274902344
            },
            "name": "topLeft"
          },
          "id": "caf38c87-9838-4b6f-8d49-0d350eace7e5",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SETUP_ESCAPE / option = 1",
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "z": 1596,
        "id": "257202e4-eabd-4542-85d6-e71986a11c29",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 55,
              "dy": 23
            },
            "name": "topLeft"
          },
          "id": "9a263ce6-a38d-49b1-b16d-4b08ae679734",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 177,
              "dy": 282
            },
            "name": "topLeft"
          },
          "id": "caf38c87-9838-4b6f-8d49-0d350eace7e5",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SETUP_ESCAPE / option = 1",
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "vertices": [
          {
            "x": 309,
            "y": 331.08
          }
        ],
        "z": 1596,
        "id": "ae5e8093-36cc-47e3-9415-177554637695",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "caf38c87-9838-4b6f-8d49-0d350eace7e5"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 23.00006103515625,
              "dy": 80.33169555664062
            },
            "name": "topLeft"
          },
          "id": "f26d9621-66b7-48d8-83a8-d86c9c34d2f4",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SETUP_ENTER [option == 1]",
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "vertices": [
          {
            "x": 179,
            "y": 139
          }
        ],
        "z": 1596,
        "id": "bbc555dd-db82-44db-9126-2cc349cb9457",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "caf38c87-9838-4b6f-8d49-0d350eace7e5"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 26.00006103515625,
              "dy": 73.58169555664062
            },
            "name": "topLeft"
          },
          "id": "9a263ce6-a38d-49b1-b16d-4b08ae679734",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SETUP_ENTER [option == 2] ",
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "z": 1596,
        "id": "5b8f9ede-cd9e-4bbe-b8e7-d4406d0018cd",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "280a21d4-a82f-45c2-aa68-aca0fea63f01"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 17,
              "dy": 110
            },
            "name": "topLeft"
          },
          "id": "caf38c87-9838-4b6f-8d49-0d350eace7e5",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "858de3e4-74be-4e25-8423-dc18c86783d5",
        "z": 1596,
        "id": "582c70a6-8998-47c9-a26e-63cbcddc0119",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 73.5,
              "dy": 33
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 40,
              "dy": 23.666656494140625
            },
            "name": "topLeft"
          },
          "id": "05da23a5-3f00-4deb-bd78-af705b6f0d14",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_SETUP_ON / option = 1"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "z": 1596,
        "id": "1363adfd-1be4-4395-be04-756a76be4eee",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "05da23a5-3f00-4deb-bd78-af705b6f0d14"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 73.5,
              "dy": 103
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_SETUP_OFF / option = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "vertices": [
          {
            "x": -1103,
            "y": 399
          }
        ],
        "z": 1596,
        "id": "00983a02-3e2a-487c-8d6d-d9d3c9a6ab7c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a83723a9-a596-4192-9139-0059c65081f6"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 34,
              "dy": 56
            },
            "name": "topLeft"
          },
          "id": "d76c515b-3bb4-4be4-b370-bd1ec7352836",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "z": 1596,
        "id": "e91159b4-5ab9-4c9f-ae97-d474e7cc313d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 54,
              "dy": 82
            },
            "name": "topLeft"
          },
          "id": "d76c515b-3bb4-4be4-b370-bd1ec7352836",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_CTRL_OFF\n/ qty_packs = 0;\nspeed = 0; \npacks_change_speed = 0; \nwaiting_time = 0;\ntick = 0"
              }
            },
            "position": {
              "distance": 0.4943159892361486,
              "offset": -60,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "vertices": [
          {
            "x": -2092,
            "y": 151
          }
        ],
        "z": 1596,
        "id": "513dbc09-c512-4748-82a0-d0477d6828a5",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d76c515b-3bb4-4be4-b370-bd1ec7352836"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 32,
              "dy": 25.5
            },
            "name": "topLeft"
          },
          "id": "cc5c390f-f9a9-4bbc-bc5c-4129219f6035",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_CTRL_ON\n/ qty_packs = 0;\nspeed = 20; \npacks_change_speed = 1; \nwaiting_time = 5;\ntick = 0"
              }
            },
            "position": {
              "distance": 0.5289869100023459,
              "offset": -91,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "vertices": [
          {
            "x": -2105,
            "y": -150
          }
        ],
        "z": 1596,
        "id": "541ac5b5-5adc-4742-b0f8-4ac4a1abab1b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 31,
              "dy": 10
            },
            "name": "topLeft"
          },
          "id": "d76c515b-3bb4-4be4-b370-bd1ec7352836",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 100,
              "dy": 216.421875
            },
            "name": "topLeft"
          },
          "x": -200,
          "y": 123,
          "id": "05da23a5-3f00-4deb-bd78-af705b6f0d14",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYST_SETUP_ON\n/ qty_packs = 0;\nspeed = 20; \npacks_change_speed = 1; \nwaiting_time = 5;\ntick = 0;\noption = 1"
              }
            },
            "position": {
              "distance": 0.4936029998315814,
              "offset": -50.00000000000003,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "e921c2ac-35ab-4c4e-87b2-128974bbde5f",
        "vertices": [
          {
            "x": -1867,
            "y": -306
          }
        ],
        "z": 1596,
        "id": "0f5c476e-c494-4ae8-82a9-7e82e841cb0f",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "caf38c87-9838-4b6f-8d49-0d350eace7e5"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 68,
              "dy": 424
            },
            "name": "topLeft"
          },
          "id": "caf38c87-9838-4b6f-8d49-0d350eace7e5",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SETUP_NEXT [option == 2] / option = 1",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.3073319717321554,
              "offset": -154.87258911132812,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "caf38c87-9838-4b6f-8d49-0d350eace7e5",
        "vertices": [
          {
            "x": -354,
            "y": 575.0833358764648
          },
          {
            "x": -410,
            "y": 575.0833358764648
          }
        ],
        "z": 1596,
        "id": "b8f04632-fc7d-4c62-94da-01b39d8a6f48",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "caf38c87-9838-4b6f-8d49-0d350eace7e5"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 53.3681640625,
              "dy": 273
            },
            "name": "topLeft"
          },
          "id": "caf38c87-9838-4b6f-8d49-0d350eace7e5",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SETUP_NEXT [option == 1] / option = 2",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.3771763715648895,
              "offset": -36.1671142578125,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "caf38c87-9838-4b6f-8d49-0d350eace7e5",
        "vertices": [
          {
            "x": -642,
            "y": 401
          }
        ],
        "z": 1597,
        "id": "7380dcab-2cc8-44b3-9210-7ac9aabced80",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 209,
              "dy": 82.41665649414062
            },
            "name": "topLeft"
          },
          "id": "9a263ce6-a38d-49b1-b16d-4b08ae679734",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 201,
              "dy": 65
            },
            "name": "topLeft"
          },
          "id": "9a263ce6-a38d-49b1-b16d-4b08ae679734",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SETUP_NEXT / waiting_time++",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.45640461095052204,
              "offset": -120.58935546875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "9a263ce6-a38d-49b1-b16d-4b08ae679734",
        "vertices": [
          {
            "x": 596,
            "y": 450.41666412353516
          }
        ],
        "z": 1598,
        "id": "520d36eb-effe-4cb7-bb9a-dd15c4ba8a36",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9a263ce6-a38d-49b1-b16d-4b08ae679734"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 147,
              "dy": 142
            },
            "name": "topLeft"
          },
          "id": "9a263ce6-a38d-49b1-b16d-4b08ae679734",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SETUP_NEXT [waiting_time == DEL_MAX_WAITING_TIME] / waiting_time = 1",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.8676916212042168,
              "offset": 79.10213340069086,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "9a263ce6-a38d-49b1-b16d-4b08ae679734",
        "z": 1599,
        "id": "ea4425ba-67ac-4728-a73f-f2e544c3dfca",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f26d9621-66b7-48d8-83a8-d86c9c34d2f4"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 225.5064697265625,
              "dy": 106
            },
            "name": "topLeft"
          },
          "id": "f26d9621-66b7-48d8-83a8-d86c9c34d2f4",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SETUP_NEXT [packs_change_speed >= DEL_MAX_PACKS] / packs_change_speed = 1",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.5721977890857206,
              "offset": -68.25427097060047,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "f26d9621-66b7-48d8-83a8-d86c9c34d2f4",
        "vertices": [
          {
            "x": 503,
            "y": 36.41287612915039
          }
        ],
        "z": 1600,
        "id": "4d23c75d-d6d0-4a3f-baca-13ed880fbd5b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f26d9621-66b7-48d8-83a8-d86c9c34d2f4"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 175.00006103515625,
              "dy": 24.331695556640625
            },
            "name": "topLeft"
          },
          "id": "f26d9621-66b7-48d8-83a8-d86c9c34d2f4",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SETUP_NEXT [packs_change_speed < DEL_MAX_PACKS] / packs_change_speed++",
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "parent": "f26d9621-66b7-48d8-83a8-d86c9c34d2f4",
        "z": 1601,
        "id": "bc16da51-9262-488e-a8e1-8db79f55f042",
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "TaskSystemCopy",
          "statemachinePrefix": "taskSystemCopy",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}