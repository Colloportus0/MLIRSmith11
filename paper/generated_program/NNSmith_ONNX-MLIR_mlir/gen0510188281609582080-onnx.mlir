module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i1\22 , \22dims\22 : [] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 4 , 2] , \22name\22 : \22v8_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_0(dense<true> : tensor<1x2x2x1xi1>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<1 x i1>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i1>, %arg1: !llvm.ptr<i1>, %arg2: i64, %arg3: !llvm.ptr<i32>, %arg4: !llvm.ptr<i32>, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr<i32>, %arg15: !llvm.ptr<i32>, %arg16: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v0_0", "v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v8_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %4 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %5 = llvm.insertvalue %arg3, %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg5, %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg7, %9[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %17 = llvm.insertvalue %arg14, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.insertvalue %arg15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %19 = llvm.insertvalue %arg16, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.mlir.constant(2147483647 : i32) : i32
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i1>>>>>
    %23 = llvm.bitcast %22 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i1>>>>> to !llvm.ptr<i1>
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %25 = llvm.insertvalue %23, %24[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(4 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(4 : index) : i64
    %51 = llvm.mlir.constant(4 : index) : i64
    %52 = llvm.mlir.null : !llvm.ptr<i1>
    %53 = llvm.getelementptr %52[%51] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %54 = llvm.ptrtoint %53 : !llvm.ptr<i1> to i64
    %55 = llvm.mlir.constant(16 : index) : i64
    %56 = llvm.add %54, %55  : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %59 = llvm.ptrtoint %58 : !llvm.ptr<i1> to i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.sub %55, %60  : i64
    %62 = llvm.add %59, %61  : i64
    %63 = llvm.urem %62, %55  : i64
    %64 = llvm.sub %62, %63  : i64
    %65 = llvm.inttoptr %64 : i64 to !llvm.ptr<i1>
    %66 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %67 = llvm.insertvalue %58, %66[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %65, %67[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.insertvalue %69, %68[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %45, %70[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %46, %71[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %47, %72[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %48, %73[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %50, %74[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %47, %75[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %48, %76[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %49, %77[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%79 : i64)
  ^bb1(%82: i64):  // 2 preds: ^bb0, ^bb11
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%84 : i64)
  ^bb3(%87: i64):  // 2 preds: ^bb2, ^bb10
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%89 : i64)
  ^bb5(%92: i64):  // 2 preds: ^bb4, ^bb9
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%94 : i64)
  ^bb7(%97: i64):  // 2 preds: ^bb6, ^bb8
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %99 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %100 = llvm.load %99 : !llvm.ptr<i1>
    %101 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(4 : index) : i64
    %103 = llvm.mul %82, %102  : i64
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mul %87, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.add %106, %92  : i64
    %108 = llvm.add %107, %97  : i64
    %109 = llvm.getelementptr %101[%108] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %110 = llvm.load %109 : !llvm.ptr<i1>
    %111 = llvm.xor %100, %110  : i1
    %112 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(4 : index) : i64
    %114 = llvm.mul %82, %113  : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mul %87, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.add %117, %92  : i64
    %119 = llvm.add %118, %97  : i64
    %120 = llvm.getelementptr %112[%119] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %111, %120 : !llvm.ptr<i1>
    %121 = llvm.add %97, %96  : i64
    llvm.br ^bb7(%121 : i64)
  ^bb9:  // pred: ^bb7
    %122 = llvm.add %92, %91  : i64
    llvm.br ^bb5(%122 : i64)
  ^bb10:  // pred: ^bb5
    %123 = llvm.add %87, %86  : i64
    llvm.br ^bb3(%123 : i64)
  ^bb11:  // pred: ^bb3
    %124 = llvm.add %82, %81  : i64
    llvm.br ^bb1(%124 : i64)
  ^bb12:  // pred: ^bb1
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(4 : index) : i64
    %131 = llvm.mlir.constant(8 : index) : i64
    %132 = llvm.mlir.constant(16 : index) : i64
    %133 = llvm.mlir.null : !llvm.ptr<i32>
    %134 = llvm.getelementptr %133[%132] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<i32> to i64
    %136 = llvm.mlir.constant(16 : index) : i64
    %137 = llvm.add %135, %136  : i64
    %138 = llvm.call @malloc(%137) : (i64) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %140 = llvm.ptrtoint %139 : !llvm.ptr<i32> to i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.sub %136, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.urem %143, %136  : i64
    %145 = llvm.sub %143, %144  : i64
    %146 = llvm.inttoptr %145 : i64 to !llvm.ptr<i32>
    %147 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %148 = llvm.insertvalue %139, %147[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %146, %148[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.insertvalue %150, %149[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %125, %151[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %126, %152[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %127, %153[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %131, %155[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %130, %156[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %128, %157[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %129, %158[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%160 : i64)
  ^bb13(%163: i64):  // 2 preds: ^bb12, ^bb23
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%165 : i64)
  ^bb15(%168: i64):  // 2 preds: ^bb14, ^bb22
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%170 : i64)
  ^bb17(%173: i64):  // 2 preds: ^bb16, ^bb21
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%175 : i64)
  ^bb19(%178: i64):  // 2 preds: ^bb18, ^bb20
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %180 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mul %21, %181  : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mul %168, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.add %185, %173  : i64
    %187 = llvm.add %186, %21  : i64
    %188 = llvm.getelementptr %180[%187] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %189 = llvm.load %188 : !llvm.ptr<i1>
    %190 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %191 = llvm.load %190 : !llvm.ptr<i32>
    %192 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.mlir.constant(8 : index) : i64
    %194 = llvm.mul %163, %193  : i64
    %195 = llvm.mlir.constant(4 : index) : i64
    %196 = llvm.mul %168, %195  : i64
    %197 = llvm.add %194, %196  : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mul %173, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.add %200, %178  : i64
    %202 = llvm.getelementptr %192[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %203 = llvm.load %202 : !llvm.ptr<i32>
    %204 = llvm.select %189, %191, %203 : i1, i32
    %205 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.mlir.constant(8 : index) : i64
    %207 = llvm.mul %163, %206  : i64
    %208 = llvm.mlir.constant(4 : index) : i64
    %209 = llvm.mul %168, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %173, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.add %213, %178  : i64
    %215 = llvm.getelementptr %205[%214] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %204, %215 : !llvm.ptr<i32>
    %216 = llvm.add %178, %177  : i64
    llvm.br ^bb19(%216 : i64)
  ^bb21:  // pred: ^bb19
    %217 = llvm.add %173, %172  : i64
    llvm.br ^bb17(%217 : i64)
  ^bb22:  // pred: ^bb17
    %218 = llvm.add %168, %167  : i64
    llvm.br ^bb15(%218 : i64)
  ^bb23:  // pred: ^bb15
    %219 = llvm.add %163, %162  : i64
    llvm.br ^bb13(%219 : i64)
  ^bb24:  // pred: ^bb13
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(4 : index) : i64
    %225 = llvm.mlir.constant(8 : index) : i64
    %226 = llvm.mlir.null : !llvm.ptr<i32>
    %227 = llvm.getelementptr %226[%225] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %228 = llvm.ptrtoint %227 : !llvm.ptr<i32> to i64
    %229 = llvm.mlir.constant(16 : index) : i64
    %230 = llvm.add %228, %229  : i64
    %231 = llvm.call @malloc(%230) : (i64) -> !llvm.ptr<i8>
    %232 = llvm.bitcast %231 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %233 = llvm.ptrtoint %232 : !llvm.ptr<i32> to i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.sub %229, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.urem %236, %229  : i64
    %238 = llvm.sub %236, %237  : i64
    %239 = llvm.inttoptr %238 : i64 to !llvm.ptr<i32>
    %240 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %241 = llvm.insertvalue %232, %240[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %242 = llvm.insertvalue %239, %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.insertvalue %243, %242[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %245 = llvm.insertvalue %220, %244[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %246 = llvm.insertvalue %221, %245[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %247 = llvm.insertvalue %222, %246[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %248 = llvm.insertvalue %224, %247[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %249 = llvm.insertvalue %222, %248[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %250 = llvm.insertvalue %223, %249[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%251 : i64)
  ^bb25(%254: i64):  // 2 preds: ^bb24, ^bb32
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%256 : i64)
  ^bb27(%259: i64):  // 2 preds: ^bb26, ^bb31
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%261 : i64)
  ^bb29(%264: i64):  // 2 preds: ^bb28, ^bb30
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %266 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %267 = llvm.mlir.constant(4 : index) : i64
    %268 = llvm.mul %254, %267  : i64
    %269 = llvm.mlir.constant(2 : index) : i64
    %270 = llvm.mul %259, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.add %271, %264  : i64
    %273 = llvm.getelementptr %266[%272] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %20, %273 : !llvm.ptr<i32>
    %274 = llvm.add %264, %263  : i64
    llvm.br ^bb29(%274 : i64)
  ^bb31:  // pred: ^bb29
    %275 = llvm.add %259, %258  : i64
    llvm.br ^bb27(%275 : i64)
  ^bb32:  // pred: ^bb27
    %276 = llvm.add %254, %253  : i64
    llvm.br ^bb25(%276 : i64)
  ^bb33:  // pred: ^bb25
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%277 : i64)
  ^bb34(%280: i64):  // 2 preds: ^bb33, ^bb44
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%282 : i64)
  ^bb36(%285: i64):  // 2 preds: ^bb35, ^bb43
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%287 : i64)
  ^bb38(%290: i64):  // 2 preds: ^bb37, ^bb42
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%292 : i64)
  ^bb40(%295: i64):  // 2 preds: ^bb39, ^bb41
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %297 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.mlir.constant(8 : index) : i64
    %299 = llvm.mul %280, %298  : i64
    %300 = llvm.mlir.constant(4 : index) : i64
    %301 = llvm.mul %285, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %290, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.add %305, %295  : i64
    %307 = llvm.getelementptr %297[%306] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %308 = llvm.load %307 : !llvm.ptr<i32>
    %309 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %310 = llvm.mlir.constant(4 : index) : i64
    %311 = llvm.mul %280, %310  : i64
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mul %285, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.add %314, %295  : i64
    %316 = llvm.getelementptr %309[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %317 = llvm.load %316 : !llvm.ptr<i32>
    %318 = llvm.icmp "slt" %317, %308 : i32
    %319 = llvm.select %318, %317, %308 : i1, i32
    %320 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mul %280, %321  : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mul %285, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.add %325, %295  : i64
    %327 = llvm.getelementptr %320[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %319, %327 : !llvm.ptr<i32>
    %328 = llvm.add %295, %294  : i64
    llvm.br ^bb40(%328 : i64)
  ^bb42:  // pred: ^bb40
    %329 = llvm.add %290, %289  : i64
    llvm.br ^bb38(%329 : i64)
  ^bb43:  // pred: ^bb38
    %330 = llvm.add %285, %284  : i64
    llvm.br ^bb36(%330 : i64)
  ^bb44:  // pred: ^bb36
    %331 = llvm.add %280, %279  : i64
    llvm.br ^bb34(%331 : i64)
  ^bb45:  // pred: ^bb34
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.mlir.constant(8 : index) : i64
    %339 = llvm.mlir.constant(16 : index) : i64
    %340 = llvm.mlir.null : !llvm.ptr<i32>
    %341 = llvm.getelementptr %340[%339] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %342 = llvm.ptrtoint %341 : !llvm.ptr<i32> to i64
    %343 = llvm.mlir.constant(16 : index) : i64
    %344 = llvm.add %342, %343  : i64
    %345 = llvm.call @malloc(%344) : (i64) -> !llvm.ptr<i8>
    %346 = llvm.bitcast %345 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %347 = llvm.ptrtoint %346 : !llvm.ptr<i32> to i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.sub %343, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.urem %350, %343  : i64
    %352 = llvm.sub %350, %351  : i64
    %353 = llvm.inttoptr %352 : i64 to !llvm.ptr<i32>
    %354 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %355 = llvm.insertvalue %346, %354[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %353, %355[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.insertvalue %357, %356[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %332, %358[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %333, %359[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %334, %360[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %335, %361[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %338, %362[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %337, %363[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %335, %364[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %336, %365[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%367 : i64)
  ^bb46(%370: i64):  // 2 preds: ^bb45, ^bb56
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%372 : i64)
  ^bb48(%375: i64):  // 2 preds: ^bb47, ^bb55
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%377 : i64)
  ^bb50(%380: i64):  // 2 preds: ^bb49, ^bb54
    %381 = llvm.icmp "slt" %380, %378 : i64
    llvm.cond_br %381, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(2 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%382 : i64)
  ^bb52(%385: i64):  // 2 preds: ^bb51, ^bb53
    %386 = llvm.icmp "slt" %385, %383 : i64
    llvm.cond_br %386, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %387 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.mlir.constant(4 : index) : i64
    %389 = llvm.mul %21, %388  : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %375, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.add %392, %380  : i64
    %394 = llvm.add %393, %21  : i64
    %395 = llvm.getelementptr %387[%394] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %396 = llvm.load %395 : !llvm.ptr<i1>
    %397 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %398 = llvm.mlir.constant(4 : index) : i64
    %399 = llvm.mul %375, %398  : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mul %380, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.add %402, %385  : i64
    %404 = llvm.getelementptr %397[%403] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %405 = llvm.load %404 : !llvm.ptr<i32>
    %406 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.mlir.constant(8 : index) : i64
    %408 = llvm.mul %370, %407  : i64
    %409 = llvm.mlir.constant(4 : index) : i64
    %410 = llvm.mul %375, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.mlir.constant(2 : index) : i64
    %413 = llvm.mul %380, %412  : i64
    %414 = llvm.add %411, %413  : i64
    %415 = llvm.add %414, %385  : i64
    %416 = llvm.getelementptr %406[%415] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %417 = llvm.load %416 : !llvm.ptr<i32>
    %418 = llvm.select %396, %405, %417 : i1, i32
    %419 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.mlir.constant(8 : index) : i64
    %421 = llvm.mul %370, %420  : i64
    %422 = llvm.mlir.constant(4 : index) : i64
    %423 = llvm.mul %375, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mul %380, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.add %427, %385  : i64
    %429 = llvm.getelementptr %419[%428] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %418, %429 : !llvm.ptr<i32>
    %430 = llvm.add %385, %384  : i64
    llvm.br ^bb52(%430 : i64)
  ^bb54:  // pred: ^bb52
    %431 = llvm.add %380, %379  : i64
    llvm.br ^bb50(%431 : i64)
  ^bb55:  // pred: ^bb50
    %432 = llvm.add %375, %374  : i64
    llvm.br ^bb48(%432 : i64)
  ^bb56:  // pred: ^bb48
    %433 = llvm.add %370, %369  : i64
    llvm.br ^bb46(%433 : i64)
  ^bb57:  // pred: ^bb46
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mlir.constant(4 : index) : i64
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(8 : index) : i64
    %440 = llvm.mlir.constant(16 : index) : i64
    %441 = llvm.mlir.constant(32 : index) : i64
    %442 = llvm.mlir.null : !llvm.ptr<i32>
    %443 = llvm.getelementptr %442[%441] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %444 = llvm.ptrtoint %443 : !llvm.ptr<i32> to i64
    %445 = llvm.mlir.constant(16 : index) : i64
    %446 = llvm.add %444, %445  : i64
    %447 = llvm.call @malloc(%446) : (i64) -> !llvm.ptr<i8>
    %448 = llvm.bitcast %447 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %449 = llvm.ptrtoint %448 : !llvm.ptr<i32> to i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.sub %445, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.urem %452, %445  : i64
    %454 = llvm.sub %452, %453  : i64
    %455 = llvm.inttoptr %454 : i64 to !llvm.ptr<i32>
    %456 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %457 = llvm.insertvalue %448, %456[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %455, %457[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.insertvalue %459, %458[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %434, %460[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %435, %461[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %436, %462[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %437, %463[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %440, %464[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %439, %465[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %437, %466[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %438, %467[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%469 : i64)
  ^bb58(%472: i64):  // 2 preds: ^bb57, ^bb68
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%474 : i64)
  ^bb60(%477: i64):  // 2 preds: ^bb59, ^bb67
    %478 = llvm.icmp "slt" %477, %475 : i64
    llvm.cond_br %478, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.mlir.constant(2 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%479 : i64)
  ^bb62(%482: i64):  // 2 preds: ^bb61, ^bb66
    %483 = llvm.icmp "slt" %482, %480 : i64
    llvm.cond_br %483, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%484 : i64)
  ^bb64(%487: i64):  // 2 preds: ^bb63, ^bb65
    %488 = llvm.icmp "slt" %487, %485 : i64
    llvm.cond_br %488, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %489 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.mlir.constant(8 : index) : i64
    %491 = llvm.mul %472, %490  : i64
    %492 = llvm.mlir.constant(4 : index) : i64
    %493 = llvm.mul %477, %492  : i64
    %494 = llvm.add %491, %493  : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mul %482, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.add %497, %487  : i64
    %499 = llvm.getelementptr %489[%498] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %500 = llvm.load %499 : !llvm.ptr<i32>
    %501 = llvm.extractvalue %468[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.mlir.constant(16 : index) : i64
    %503 = llvm.mul %472, %502  : i64
    %504 = llvm.mlir.constant(8 : index) : i64
    %505 = llvm.mul %477, %504  : i64
    %506 = llvm.add %503, %505  : i64
    %507 = llvm.mlir.constant(2 : index) : i64
    %508 = llvm.mul %482, %507  : i64
    %509 = llvm.add %506, %508  : i64
    %510 = llvm.add %509, %487  : i64
    %511 = llvm.getelementptr %501[%510] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %500, %511 : !llvm.ptr<i32>
    %512 = llvm.add %487, %486  : i64
    llvm.br ^bb64(%512 : i64)
  ^bb66:  // pred: ^bb64
    %513 = llvm.add %482, %481  : i64
    llvm.br ^bb62(%513 : i64)
  ^bb67:  // pred: ^bb62
    %514 = llvm.add %477, %476  : i64
    llvm.br ^bb60(%514 : i64)
  ^bb68:  // pred: ^bb60
    %515 = llvm.add %472, %471  : i64
    llvm.br ^bb58(%515 : i64)
  ^bb69:  // pred: ^bb58
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(2 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%516 : i64)
  ^bb70(%519: i64):  // 2 preds: ^bb69, ^bb80
    %520 = llvm.icmp "slt" %519, %517 : i64
    llvm.cond_br %520, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(2 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%521 : i64)
  ^bb72(%524: i64):  // 2 preds: ^bb71, ^bb79
    %525 = llvm.icmp "slt" %524, %522 : i64
    llvm.cond_br %525, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.mlir.constant(2 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%526 : i64)
  ^bb74(%529: i64):  // 2 preds: ^bb73, ^bb78
    %530 = llvm.icmp "slt" %529, %527 : i64
    llvm.cond_br %530, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(2 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%531 : i64)
  ^bb76(%534: i64):  // 2 preds: ^bb75, ^bb77
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %536 = llvm.mlir.constant(2 : index) : i64
    %537 = llvm.add %529, %536  : i64
    %538 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.mlir.constant(8 : index) : i64
    %540 = llvm.mul %519, %539  : i64
    %541 = llvm.mlir.constant(4 : index) : i64
    %542 = llvm.mul %524, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mul %529, %544  : i64
    %546 = llvm.add %543, %545  : i64
    %547 = llvm.add %546, %534  : i64
    %548 = llvm.getelementptr %538[%547] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %549 = llvm.load %548 : !llvm.ptr<i32>
    %550 = llvm.extractvalue %468[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %551 = llvm.mlir.constant(16 : index) : i64
    %552 = llvm.mul %519, %551  : i64
    %553 = llvm.mlir.constant(8 : index) : i64
    %554 = llvm.mul %524, %553  : i64
    %555 = llvm.add %552, %554  : i64
    %556 = llvm.mlir.constant(2 : index) : i64
    %557 = llvm.mul %537, %556  : i64
    %558 = llvm.add %555, %557  : i64
    %559 = llvm.add %558, %534  : i64
    %560 = llvm.getelementptr %550[%559] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %549, %560 : !llvm.ptr<i32>
    %561 = llvm.add %534, %533  : i64
    llvm.br ^bb76(%561 : i64)
  ^bb78:  // pred: ^bb76
    %562 = llvm.add %529, %528  : i64
    llvm.br ^bb74(%562 : i64)
  ^bb79:  // pred: ^bb74
    %563 = llvm.add %524, %523  : i64
    llvm.br ^bb72(%563 : i64)
  ^bb80:  // pred: ^bb72
    %564 = llvm.add %519, %518  : i64
    llvm.br ^bb70(%564 : i64)
  ^bb81:  // pred: ^bb70
    llvm.return %468 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v0_0", "v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v8_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %4 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %5 = llvm.extractvalue %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %4[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %4[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %4[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %4[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %4[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %4[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %4[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %4[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %4[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %19 = llvm.extractvalue %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.call @main_graph(%1, %2, %3, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %17, %18, %19) : (!llvm.ptr<i1>, !llvm.ptr<i1>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %20, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.getelementptr %0[%16] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<i8>>
    %19 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %21 = llvm.call @omTensorGetDataPtr(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %23 = llvm.insertvalue %22, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %22, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.call @omTensorGetShape(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %28 = llvm.call @omTensorGetStrides(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %29 = llvm.mlir.constant(0 : i64) : i64
    %30 = llvm.getelementptr %27[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %31 = llvm.load %30 : !llvm.ptr<i64>
    %32 = llvm.insertvalue %31, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.getelementptr %28[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %34 = llvm.load %33 : !llvm.ptr<i64>
    %35 = llvm.insertvalue %34, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.getelementptr %27[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %28[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.getelementptr %27[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %28[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(3 : i64) : i64
    %51 = llvm.getelementptr %27[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %28[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %56, %19 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %0[%57] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %59 = llvm.load %58 : !llvm.ptr<ptr<i8>>
    %60 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %62 = llvm.call @omTensorGetDataPtr(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %64 = llvm.insertvalue %63, %61[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %65 = llvm.insertvalue %63, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %68 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %67, %60 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %19, %60) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %70 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.mlir.constant(8 : i64) : i64
    %73 = llvm.call @malloc(%72) : (i64) -> !llvm.ptr<i8>
    %74 = llvm.bitcast %73 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %75 = llvm.mlir.constant(4 : i64) : i64
    %76 = llvm.call @omTensorCreateUntyped(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.extractvalue %70[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.bitcast %78 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %80 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.bitcast %80 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%76, %77, %79, %81) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %82 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%76, %82) : (!llvm.ptr<i8>, i64) -> ()
    %83 = llvm.call @omTensorGetShape(%76) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %84 = llvm.call @omTensorGetStrides(%76) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %85 = llvm.mlir.constant(0 : i64) : i64
    %86 = llvm.extractvalue %70[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %83[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.extractvalue %70[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %84[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.mlir.constant(1 : i64) : i64
    %91 = llvm.extractvalue %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %83[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.extractvalue %70[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.getelementptr %84[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %93, %94 : !llvm.ptr<i64>
    %95 = llvm.mlir.constant(2 : i64) : i64
    %96 = llvm.extractvalue %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %83[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %70[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %84[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(3 : i64) : i64
    %101 = llvm.extractvalue %70[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %83[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %70[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %84[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(0 : i64) : i64
    %106 = llvm.getelementptr %74[%105] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %76, %106 : !llvm.ptr<ptr<i8>>
    %107 = llvm.call @omTensorListCreate(%74, %71, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %107 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<185 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<185 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

