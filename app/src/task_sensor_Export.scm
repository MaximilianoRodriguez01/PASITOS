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
            "text": "task_sensor Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event EV_BTN_01_PRESSED\n    in event EV_BTN_01_NOT_PRESSED\n    in event \n        EV_DS_UP\n    in event \n        EV_DS_DOWN\n    \ninternal:\n    var tick:integer\n    const DEL_BTN_01_MAX:integer = 500\n\n    \n\n    \n    "
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -5318,
          "y": 271
        },
        "size": {
          "height": 1192,
          "width": 1207
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 960,
        "id": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "embeds": [
          "b97114e0-afc4-477f-8684-459f3ca41676",
          "a7c38efd-82a1-415b-b77b-7839e778ca44",
          "ac5912c3-37fb-4879-9f15-206caacd3f56",
          "38df38c3-b7d7-4553-9e1c-81df3621782c",
          "d75e77f0-fbec-46c3-a208-8fc8fe6de429",
          "ccee630d-e8be-409a-ba7d-08f3e021b194",
          "94cb3fc0-6b13-4d92-9c14-534f4f2edc28",
          "7323a4c3-b971-467e-a55b-d5ed02bed747",
          "b9ebc3dd-6122-4ccc-865a-45e04396c7b7",
          "409e602c-3faf-41f6-afbe-b0fbd11761de",
          "90e98de6-791e-4eaf-82b8-4698e196657c",
          "c22b1588-f3a6-4d58-a80e-2934f44927a7",
          "a9c39d92-7b7e-4f10-affe-4d3bac0da233"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "sensor"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4385.828125,
          "y": 618.40625
        },
        "size": {
          "height": 93.59375,
          "width": 100.828125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "z": 961,
        "id": "7323a4c3-b971-467e-a55b-d5ed02bed747",
        "embeds": [
          "0fb57773-a720-4701-9d3d-85d90ca4188c"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_DOWN",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -5259,
          "y": 845.40625
        },
        "size": {
          "height": 93.59375,
          "width": 86.42500305175781
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "z": 962,
        "id": "b9ebc3dd-6122-4ccc-865a-45e04396c7b7",
        "embeds": [
          "a7c853bc-425f-4230-97ac-b2682f1a6ca0"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_UP",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4832.7109375,
          "y": 393.90625
        },
        "size": {
          "height": 154.1875,
          "width": 122.42500305175781
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "z": 963,
        "id": "409e602c-3faf-41f6-afbe-b0fbd11761de",
        "embeds": [
          "92ac1b53-f9e5-42c9-9eef-a4fc103def7d"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_FALLING",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -5295,
          "y": 863.40625
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
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 964,
        "id": "90e98de6-791e-4eaf-82b8-4698e196657c",
        "embeds": [
          "917abac8-beed-4a20-b81a-bd88eeca26aa"
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
          "x": -4878,
          "y": 1261.90625
        },
        "size": {
          "height": 93.59375,
          "width": 144.03408813476562
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 969,
        "id": "c22b1588-f3a6-4d58-a80e-2934f44927a7",
        "embeds": [
          "cf970cf0-d43d-4e22-a9f3-d38aa0dcbb94"
        ],
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "attrs": {
          "name": {
            "text": "ST_BTN_01_INCREASING",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -5295,
          "y": 293.90625
        },
        "size": {
          "width": 96.4856185913086,
          "height": 60
        },
        "angle": 0,
        "linkable": false,
        "id": "a9c39d92-7b7e-4f10-affe-4d3bac0da233",
        "z": 973,
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "attrs": {
          "label": {
            "text": "BOTONES/DIPS",
            "annotations": [
              {
                "start": 0,
                "end": 12,
                "attrs": {
                  "fill": "#333333",
                  "font-size": 12,
                  "font-weight": "normal",
                  "text-decoration": "none",
                  "font-style": "normal",
                  "font-family": "'Roboto Mono', monospace"
                }
              }
            ]
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
          "x": -5295,
          "y": 878.40625
        },
        "parent": "90e98de6-791e-4eaf-82b8-4698e196657c",
        "z": 977,
        "id": "917abac8-beed-4a20-b81a-bd88eeca26aa",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "409e602c-3faf-41f6-afbe-b0fbd11761de"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 90.98126220703125,
              "dy": 5
            },
            "name": "topLeft"
          },
          "id": "409e602c-3faf-41f6-afbe-b0fbd11761de",
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
                "text": "EV_BTN_01_PRESSED\n[tick > 0]\n/ tick--"
              }
            },
            "position": {
              "distance": 0.12810647058215494,
              "offset": -74.43896484375,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          }
        ],
        "parent": "409e602c-3faf-41f6-afbe-b0fbd11761de",
        "vertices": [
          {
            "x": -4832,
            "y": 335.953125
          }
        ],
        "z": 978,
        "id": "92ac1b53-f9e5-42c9-9eef-a4fc103def7d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c22b1588-f3a6-4d58-a80e-2934f44927a7"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 40.01094055175781,
              "dy": 60
            },
            "name": "topLeft"
          },
          "id": "b9ebc3dd-6122-4ccc-865a-45e04396c7b7",
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
                "text": "EV_BTN_01_NOT_PRESSED\n[tick <= 0]"
              }
            },
            "position": {
              "distance": 0.2961863211603202,
              "offset": 23.169677734375,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "vertices": [
          {
            "x": -5251,
            "y": 1322.90625
          }
        ],
        "z": 978,
        "id": "a7c38efd-82a1-415b-b77b-7839e778ca44",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "90e98de6-791e-4eaf-82b8-4698e196657c"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 6.0109405517578125,
              "dy": 30
            },
            "name": "topLeft"
          },
          "id": "b9ebc3dd-6122-4ccc-865a-45e04396c7b7",
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
                "text": "1"
              }
            }
          }
        ],
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "vertices": [],
        "z": 978,
        "id": "38df38c3-b7d7-4553-9e1c-81df3621782c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "409e602c-3faf-41f6-afbe-b0fbd11761de"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 53.01092529296875,
              "dy": 36
            },
            "name": "topLeft"
          },
          "id": "b9ebc3dd-6122-4ccc-865a-45e04396c7b7",
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
                "text": "EV_BTN_01_NOT_PRESSED\n/ tick = 0"
              }
            },
            "position": {
              "distance": 0.11817566224637131,
              "offset": -83.44287109375,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "vertices": [
          {
            "x": -4796,
            "y": 763.90625
          }
        ],
        "z": 978,
        "id": "ccee630d-e8be-409a-ba7d-08f3e021b194",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b9ebc3dd-6122-4ccc-865a-45e04396c7b7"
        },
        "target": {
          "id": "b9ebc3dd-6122-4ccc-865a-45e04396c7b7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 49.01611328125,
              "dy": 60.5,
              "rotate": true
            }
          },
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
                "text": "EV_BTN_01_NOT_PRESSED"
              }
            },
            "position": {
              "distance": 0.559562716102865,
              "offset": 99.3828125,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "parent": "b9ebc3dd-6122-4ccc-865a-45e04396c7b7",
        "vertices": [
          {
            "x": -5132,
            "y": 987.90625
          }
        ],
        "z": 978,
        "id": "a7c853bc-425f-4230-97ac-b2682f1a6ca0",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b9ebc3dd-6122-4ccc-865a-45e04396c7b7"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 3.01092529296875,
              "dy": 29
            },
            "name": "topLeft"
          },
          "id": "409e602c-3faf-41f6-afbe-b0fbd11761de",
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
                "text": "EV_BTN_01_PRESSED\n/ tick = DEL_BTN_01_MAX"
              }
            },
            "position": {
              "distance": 0.691256835106195,
              "offset": 45.003120681260974,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "vertices": [
          {
            "x": -5194,
            "y": 527.90625
          }
        ],
        "z": 978,
        "id": "d75e77f0-fbec-46c3-a208-8fc8fe6de429",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c22b1588-f3a6-4d58-a80e-2934f44927a7"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 3.8421630859375,
              "dy": 33
            },
            "name": "topLeft"
          },
          "id": "7323a4c3-b971-467e-a55b-d5ed02bed747",
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
                "text": "EV_BTN_01_PRESSED\n/ tick = 0\n"
              }
            },
            "position": {
              "distance": 0.5356211734741898,
              "offset": 37,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "vertices": [
          {
            "x": -4658,
            "y": 953.90625
          }
        ],
        "z": 978,
        "id": "ac5912c3-37fb-4879-9f15-206caacd3f56",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "409e602c-3faf-41f6-afbe-b0fbd11761de"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 49.8421630859375,
              "dy": 9
            },
            "name": "topLeft"
          },
          "id": "7323a4c3-b971-467e-a55b-d5ed02bed747",
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
                "text": "EV_BTN_01_PRESSED\n[tick <= 0]"
              }
            },
            "position": {
              "distance": 0.45263279710279647,
              "offset": -30,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "vertices": [
          {
            "x": -4545,
            "y": 410.953125
          }
        ],
        "z": 978,
        "id": "94cb3fc0-6b13-4d92-9c14-534f4f2edc28",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7323a4c3-b971-467e-a55b-d5ed02bed747"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 141.015625,
              "dy": 37
            },
            "name": "topLeft"
          },
          "id": "c22b1588-f3a6-4d58-a80e-2934f44927a7",
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
                "text": "EV_BTN_01_NOT_PRESSED\n/ tick = DEL_BTN_01_MAX"
              }
            },
            "position": {
              "distance": 0.7341272688115019,
              "offset": 19,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "parent": "a5f5090d-56d0-42cb-afea-4ee0992082ab",
        "vertices": [
          {
            "x": -4321,
            "y": 1217.90625
          }
        ],
        "z": 978,
        "id": "b97114e0-afc4-477f-8684-459f3ca41676",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7323a4c3-b971-467e-a55b-d5ed02bed747"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 94.80938720703125,
              "dy": 49
            },
            "name": "topLeft"
          },
          "id": "7323a4c3-b971-467e-a55b-d5ed02bed747",
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
                "text": "EV_BTN_01_PRESSED"
              }
            },
            "position": {
              "distance": 0.44330701481987894,
              "offset": -29.06579151884014,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "parent": "7323a4c3-b971-467e-a55b-d5ed02bed747",
        "vertices": [
          {
            "x": -4227.03125,
            "y": 647.40625
          }
        ],
        "z": 978,
        "id": "0fb57773-a720-4701-9d3d-85d90ca4188c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c22b1588-f3a6-4d58-a80e-2934f44927a7"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 101.98126220703125,
              "dy": 49
            },
            "name": "topLeft"
          },
          "id": "c22b1588-f3a6-4d58-a80e-2934f44927a7",
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
                "text": "EV_BTN_01_NOT_PRESSED\n[tick > 0]\n/ tick--"
              }
            },
            "position": {
              "distance": 0.3163668932086741,
              "offset": 54.45968325601663,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          }
        ],
        "parent": "c22b1588-f3a6-4d58-a80e-2934f44927a7",
        "vertices": [
          {
            "x": -4805.98,
            "y": 1371.90625
          }
        ],
        "z": 978,
        "id": "cf970cf0-d43d-4e22-a9f3-d38aa0dcbb94",
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
          "moduleName": "TaskSensor",
          "statemachinePrefix": "taskSensor",
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