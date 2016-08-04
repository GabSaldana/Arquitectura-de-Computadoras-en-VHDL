
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.7.0.96.1

-- ldbanno -n VHDL -o combin01_combin01_mapvho.vho -w -neg -gui -msgset C:/Users/Usuario_local/Documents/ESCOM/Arquitectura de computadoras/PracticasG/generic04-1O/generic04/generic02/combinacional01/promote.xml combin01_combin01_map.ncd 
-- Netlist created on Tue Jun 07 23:10:27 2016
-- Netlist written on Tue Jun 07 23:10:30 2016
-- Design is for device LCMXO2-7000ZE
-- Design is for package TQFP144
-- Design is for performance grade 1

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"6666")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_0";

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    salida_xor: lut4
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity salida_xorB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity salida_xorB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "salida_xorB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_salidaxor	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; salidaxor: out Std_logic);

    ATTRIBUTE Vital_Level0 OF salida_xorB : ENTITY IS TRUE;

  end salida_xorB;

  architecture Structure of salida_xorB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal salidaxor_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    salida_xor_pad: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>salidaxor_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, salidaxor_out)
    VARIABLE salidaxor_zd         	: std_logic := 'X';
    VARIABLE salidaxor_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    salidaxor_zd 	:= salidaxor_out;

    VitalPathDelay01 (
      OutSignal => salidaxor, OutSignalName => "salidaxor", OutTemp => salidaxor_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_salidaxor,
                           PathCondition => TRUE)),
      GlitchData => salidaxor_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0001 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0001 : ENTITY IS TRUE;

  end xo2iobuf0001;

  architecture Structure of xo2iobuf0001 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity entrada1_xorB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity entrada1_xorB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "entrada1_xorB";

      tipd_entrada1xor  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_entrada1xor_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_entrada1xor 	: VitalDelayType := 0 ns;
      tpw_entrada1xor_posedge	: VitalDelayType := 0 ns;
      tpw_entrada1xor_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; entrada1xor: in Std_logic);

    ATTRIBUTE Vital_Level0 OF entrada1_xorB : ENTITY IS TRUE;

  end entrada1_xorB;

  architecture Structure of entrada1_xorB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal entrada1xor_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    entrada1_xor_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>entrada1xor_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(entrada1xor_ipd, entrada1xor, tipd_entrada1xor);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, entrada1xor_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_entrada1xor_entrada1xor          	: x01 := '0';
    VARIABLE periodcheckinfo_entrada1xor	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => entrada1xor_ipd,
        TestSignalName => "entrada1xor",
        Period => tperiod_entrada1xor,
        PulseWidthHigh => tpw_entrada1xor_posedge,
        PulseWidthLow => tpw_entrada1xor_negedge,
        PeriodData => periodcheckinfo_entrada1xor,
        Violation => tviol_entrada1xor_entrada1xor,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => entrada1xor_ipd'last_event,
                           PathDelay => tpd_entrada1xor_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity entrada2_xorB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity entrada2_xorB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "entrada2_xorB";

      tipd_entrada2xor  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_entrada2xor_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_entrada2xor 	: VitalDelayType := 0 ns;
      tpw_entrada2xor_posedge	: VitalDelayType := 0 ns;
      tpw_entrada2xor_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; entrada2xor: in Std_logic);

    ATTRIBUTE Vital_Level0 OF entrada2_xorB : ENTITY IS TRUE;

  end entrada2_xorB;

  architecture Structure of entrada2_xorB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal entrada2xor_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    entrada2_xor_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>entrada2xor_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(entrada2xor_ipd, entrada2xor, tipd_entrada2xor);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, entrada2xor_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_entrada2xor_entrada2xor          	: x01 := '0';
    VARIABLE periodcheckinfo_entrada2xor	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => entrada2xor_ipd,
        TestSignalName => "entrada2xor",
        Period => tperiod_entrada2xor,
        PulseWidthHigh => tpw_entrada2xor_posedge,
        PulseWidthLow => tpw_entrada2xor_negedge,
        PeriodData => periodcheckinfo_entrada2xor,
        Violation => tviol_entrada2xor_entrada2xor,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => entrada2xor_ipd'last_event,
                           PathDelay => tpd_entrada2xor_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity eXor
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity eXor is
    port (entrada1_xor: in Std_logic; entrada2_xor: in Std_logic; 
          salida_xor: out Std_logic);



  end eXor;

  architecture Structure of eXor is
    signal entrada2_xor_c: Std_logic;
    signal entrada1_xor_c: Std_logic;
    signal salida_xor_c: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component salida_xorB
      port (PADDO: in Std_logic; salidaxor: out Std_logic);
    end component;
    component entrada1_xorB
      port (PADDI: out Std_logic; entrada1xor: in Std_logic);
    end component;
    component entrada2_xorB
      port (PADDI: out Std_logic; entrada2xor: in Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (B0=>entrada2_xor_c, A0=>entrada1_xor_c, F0=>salida_xor_c);
    salida_xorI: salida_xorB
      port map (PADDO=>salida_xor_c, salidaxor=>salida_xor);
    entrada1_xorI: entrada1_xorB
      port map (PADDI=>entrada1_xor_c, entrada1xor=>entrada1_xor);
    entrada2_xorI: entrada2_xorB
      port map (PADDI=>entrada2_xor_c, entrada2xor=>entrada2_xor);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of eXor is
    for Structure
    end for;
  end Structure_CON;


