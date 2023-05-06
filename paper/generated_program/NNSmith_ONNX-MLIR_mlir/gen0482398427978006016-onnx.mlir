module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 5] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 5] , \22name\22 : \22v8_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<6> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v4_0", "v0_0"], llvm.emit_c_interface, output_names = ["v9_0", "v8_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(2147483647 : i32) : i32
    %25 = llvm.mlir.constant(0 : i32) : i32
    %26 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(5 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(5 : index) : i64
    %55 = llvm.mlir.constant(5 : index) : i64
    %56 = llvm.mlir.constant(5 : index) : i64
    %57 = llvm.mlir.null : !llvm.ptr<i32>
    %58 = llvm.getelementptr %57[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %59 = llvm.ptrtoint %58 : !llvm.ptr<i32> to i64
    %60 = llvm.mlir.constant(16 : index) : i64
    %61 = llvm.add %59, %60  : i64
    %62 = llvm.call @malloc(%61) : (i64) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %64 = llvm.ptrtoint %63 : !llvm.ptr<i32> to i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.sub %60, %65  : i64
    %67 = llvm.add %64, %66  : i64
    %68 = llvm.urem %67, %60  : i64
    %69 = llvm.sub %67, %68  : i64
    %70 = llvm.inttoptr %69 : i64 to !llvm.ptr<i32>
    %71 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %72 = llvm.insertvalue %63, %71[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %70, %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.insertvalue %74, %73[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %50, %76[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %52, %78[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %55, %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %54, %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %52, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %53, %82[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%84 : i64)
  ^bb1(%87: i64):  // 2 preds: ^bb0, ^bb11
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%89 : i64)
  ^bb3(%92: i64):  // 2 preds: ^bb2, ^bb10
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%94 : i64)
  ^bb5(%97: i64):  // 2 preds: ^bb4, ^bb9
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%99 : i64)
  ^bb7(%102: i64):  // 2 preds: ^bb6, ^bb8
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %104 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.add %87, %92  : i64
    %106 = llvm.add %105, %97  : i64
    %107 = llvm.add %106, %102  : i64
    %108 = llvm.getelementptr %104[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.load %108 : !llvm.ptr<i32>
    %110 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(5 : index) : i64
    %112 = llvm.mul %87, %111  : i64
    %113 = llvm.mlir.constant(5 : index) : i64
    %114 = llvm.mul %92, %113  : i64
    %115 = llvm.add %112, %114  : i64
    %116 = llvm.mlir.constant(5 : index) : i64
    %117 = llvm.mul %97, %116  : i64
    %118 = llvm.add %115, %117  : i64
    %119 = llvm.add %118, %102  : i64
    %120 = llvm.getelementptr %110[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %109, %120 : !llvm.ptr<i32>
    %121 = llvm.add %102, %101  : i64
    llvm.br ^bb7(%121 : i64)
  ^bb9:  // pred: ^bb7
    %122 = llvm.add %97, %96  : i64
    llvm.br ^bb5(%122 : i64)
  ^bb10:  // pred: ^bb5
    %123 = llvm.add %92, %91  : i64
    llvm.br ^bb3(%123 : i64)
  ^bb11:  // pred: ^bb3
    %124 = llvm.add %87, %86  : i64
    llvm.br ^bb1(%124 : i64)
  ^bb12:  // pred: ^bb1
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%125 : i64)
  ^bb13(%128: i64):  // 2 preds: ^bb12, ^bb23
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%130 : i64)
  ^bb15(%133: i64):  // 2 preds: ^bb14, ^bb22
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%135 : i64)
  ^bb17(%138: i64):  // 2 preds: ^bb16, ^bb21
    %139 = llvm.icmp "slt" %138, %136 : i64
    llvm.cond_br %139, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%140 : i64)
  ^bb19(%143: i64):  // 2 preds: ^bb18, ^bb20
    %144 = llvm.icmp "slt" %143, %141 : i64
    llvm.cond_br %144, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.add %128, %133  : i64
    %149 = llvm.add %148, %138  : i64
    %150 = llvm.add %149, %143  : i64
    %151 = llvm.getelementptr %147[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %152 = llvm.load %151 : !llvm.ptr<i32>
    %153 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(5 : index) : i64
    %155 = llvm.mul %128, %154  : i64
    %156 = llvm.mlir.constant(5 : index) : i64
    %157 = llvm.mul %133, %156  : i64
    %158 = llvm.add %155, %157  : i64
    %159 = llvm.mlir.constant(5 : index) : i64
    %160 = llvm.mul %138, %159  : i64
    %161 = llvm.add %158, %160  : i64
    %162 = llvm.add %161, %146  : i64
    %163 = llvm.getelementptr %153[%162] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %152, %163 : !llvm.ptr<i32>
    %164 = llvm.add %143, %142  : i64
    llvm.br ^bb19(%164 : i64)
  ^bb21:  // pred: ^bb19
    %165 = llvm.add %138, %137  : i64
    llvm.br ^bb17(%165 : i64)
  ^bb22:  // pred: ^bb17
    %166 = llvm.add %133, %132  : i64
    llvm.br ^bb15(%166 : i64)
  ^bb23:  // pred: ^bb15
    %167 = llvm.add %128, %127  : i64
    llvm.br ^bb13(%167 : i64)
  ^bb24:  // pred: ^bb13
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%168 : i64)
  ^bb25(%171: i64):  // 2 preds: ^bb24, ^bb35
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%173 : i64)
  ^bb27(%176: i64):  // 2 preds: ^bb26, ^bb34
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%178 : i64)
  ^bb29(%181: i64):  // 2 preds: ^bb28, ^bb33
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%183 : i64)
  ^bb31(%186: i64):  // 2 preds: ^bb30, ^bb32
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.add %186, %188  : i64
    %190 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.add %171, %176  : i64
    %192 = llvm.add %191, %181  : i64
    %193 = llvm.add %192, %186  : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %195 = llvm.load %194 : !llvm.ptr<i32>
    %196 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(5 : index) : i64
    %198 = llvm.mul %171, %197  : i64
    %199 = llvm.mlir.constant(5 : index) : i64
    %200 = llvm.mul %176, %199  : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.mlir.constant(5 : index) : i64
    %203 = llvm.mul %181, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.add %204, %189  : i64
    %206 = llvm.getelementptr %196[%205] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %195, %206 : !llvm.ptr<i32>
    %207 = llvm.add %186, %185  : i64
    llvm.br ^bb31(%207 : i64)
  ^bb33:  // pred: ^bb31
    %208 = llvm.add %181, %180  : i64
    llvm.br ^bb29(%208 : i64)
  ^bb34:  // pred: ^bb29
    %209 = llvm.add %176, %175  : i64
    llvm.br ^bb27(%209 : i64)
  ^bb35:  // pred: ^bb27
    %210 = llvm.add %171, %170  : i64
    llvm.br ^bb25(%210 : i64)
  ^bb36:  // pred: ^bb25
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%211 : i64)
  ^bb37(%214: i64):  // 2 preds: ^bb36, ^bb47
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%216 : i64)
  ^bb39(%219: i64):  // 2 preds: ^bb38, ^bb46
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%221 : i64)
  ^bb41(%224: i64):  // 2 preds: ^bb40, ^bb45
    %225 = llvm.icmp "slt" %224, %222 : i64
    llvm.cond_br %225, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%226 : i64)
  ^bb43(%229: i64):  // 2 preds: ^bb42, ^bb44
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %231 = llvm.mlir.constant(3 : index) : i64
    %232 = llvm.add %229, %231  : i64
    %233 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.add %214, %219  : i64
    %235 = llvm.add %234, %224  : i64
    %236 = llvm.add %235, %229  : i64
    %237 = llvm.getelementptr %233[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.load %237 : !llvm.ptr<i32>
    %239 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(5 : index) : i64
    %241 = llvm.mul %214, %240  : i64
    %242 = llvm.mlir.constant(5 : index) : i64
    %243 = llvm.mul %219, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.mlir.constant(5 : index) : i64
    %246 = llvm.mul %224, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %232  : i64
    %249 = llvm.getelementptr %239[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %238, %249 : !llvm.ptr<i32>
    %250 = llvm.add %229, %228  : i64
    llvm.br ^bb43(%250 : i64)
  ^bb45:  // pred: ^bb43
    %251 = llvm.add %224, %223  : i64
    llvm.br ^bb41(%251 : i64)
  ^bb46:  // pred: ^bb41
    %252 = llvm.add %219, %218  : i64
    llvm.br ^bb39(%252 : i64)
  ^bb47:  // pred: ^bb39
    %253 = llvm.add %214, %213  : i64
    llvm.br ^bb37(%253 : i64)
  ^bb48:  // pred: ^bb37
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%254 : i64)
  ^bb49(%257: i64):  // 2 preds: ^bb48, ^bb59
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%259 : i64)
  ^bb51(%262: i64):  // 2 preds: ^bb50, ^bb58
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%264 : i64)
  ^bb53(%267: i64):  // 2 preds: ^bb52, ^bb57
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%269 : i64)
  ^bb55(%272: i64):  // 2 preds: ^bb54, ^bb56
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %274 = llvm.mlir.constant(4 : index) : i64
    %275 = llvm.add %272, %274  : i64
    %276 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.add %257, %262  : i64
    %278 = llvm.add %277, %267  : i64
    %279 = llvm.add %278, %272  : i64
    %280 = llvm.getelementptr %276[%279] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %281 = llvm.load %280 : !llvm.ptr<i32>
    %282 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.mlir.constant(5 : index) : i64
    %284 = llvm.mul %257, %283  : i64
    %285 = llvm.mlir.constant(5 : index) : i64
    %286 = llvm.mul %262, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.mlir.constant(5 : index) : i64
    %289 = llvm.mul %267, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.add %290, %275  : i64
    %292 = llvm.getelementptr %282[%291] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %281, %292 : !llvm.ptr<i32>
    %293 = llvm.add %272, %271  : i64
    llvm.br ^bb55(%293 : i64)
  ^bb57:  // pred: ^bb55
    %294 = llvm.add %267, %266  : i64
    llvm.br ^bb53(%294 : i64)
  ^bb58:  // pred: ^bb53
    %295 = llvm.add %262, %261  : i64
    llvm.br ^bb51(%295 : i64)
  ^bb59:  // pred: ^bb51
    %296 = llvm.add %257, %256  : i64
    llvm.br ^bb49(%296 : i64)
  ^bb60:  // pred: ^bb49
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(5 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(5 : index) : i64
    %303 = llvm.mlir.constant(5 : index) : i64
    %304 = llvm.mlir.constant(5 : index) : i64
    %305 = llvm.mlir.null : !llvm.ptr<i32>
    %306 = llvm.getelementptr %305[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i32> to i64
    %308 = llvm.mlir.constant(16 : index) : i64
    %309 = llvm.add %307, %308  : i64
    %310 = llvm.call @malloc(%309) : (i64) -> !llvm.ptr<i8>
    %311 = llvm.bitcast %310 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %312 = llvm.ptrtoint %311 : !llvm.ptr<i32> to i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.sub %308, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.urem %315, %308  : i64
    %317 = llvm.sub %315, %316  : i64
    %318 = llvm.inttoptr %317 : i64 to !llvm.ptr<i32>
    %319 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %320 = llvm.insertvalue %311, %319[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %318, %320[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.insertvalue %322, %321[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %297, %323[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %298, %324[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %299, %325[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %300, %326[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %303, %327[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %302, %328[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %300, %329[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %301, %330[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%332 : i64)
  ^bb61(%335: i64):  // 2 preds: ^bb60, ^bb71
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%337 : i64)
  ^bb63(%340: i64):  // 2 preds: ^bb62, ^bb70
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%342 : i64)
  ^bb65(%345: i64):  // 2 preds: ^bb64, ^bb69
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(5 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%347 : i64)
  ^bb67(%350: i64):  // 2 preds: ^bb66, ^bb68
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %352 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.mlir.constant(5 : index) : i64
    %354 = llvm.mul %335, %353  : i64
    %355 = llvm.mlir.constant(5 : index) : i64
    %356 = llvm.mul %340, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.mlir.constant(5 : index) : i64
    %359 = llvm.mul %345, %358  : i64
    %360 = llvm.add %357, %359  : i64
    %361 = llvm.add %360, %350  : i64
    %362 = llvm.getelementptr %352[%361] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %363 = llvm.load %362 : !llvm.ptr<i32>
    %364 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.mlir.constant(5 : index) : i64
    %366 = llvm.mul %335, %365  : i64
    %367 = llvm.mlir.constant(5 : index) : i64
    %368 = llvm.mul %340, %367  : i64
    %369 = llvm.add %366, %368  : i64
    %370 = llvm.mlir.constant(5 : index) : i64
    %371 = llvm.mul %345, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.add %372, %350  : i64
    %374 = llvm.getelementptr %364[%373] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %363, %374 : !llvm.ptr<i32>
    %375 = llvm.add %350, %349  : i64
    llvm.br ^bb67(%375 : i64)
  ^bb69:  // pred: ^bb67
    %376 = llvm.add %345, %344  : i64
    llvm.br ^bb65(%376 : i64)
  ^bb70:  // pred: ^bb65
    %377 = llvm.add %340, %339  : i64
    llvm.br ^bb63(%377 : i64)
  ^bb71:  // pred: ^bb63
    %378 = llvm.add %335, %334  : i64
    llvm.br ^bb61(%378 : i64)
  ^bb72:  // pred: ^bb61
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(5 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(5 : index) : i64
    %385 = llvm.mlir.constant(5 : index) : i64
    %386 = llvm.mlir.constant(5 : index) : i64
    %387 = llvm.mlir.null : !llvm.ptr<i32>
    %388 = llvm.getelementptr %387[%386] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %389 = llvm.ptrtoint %388 : !llvm.ptr<i32> to i64
    %390 = llvm.mlir.constant(16 : index) : i64
    %391 = llvm.add %389, %390  : i64
    %392 = llvm.call @malloc(%391) : (i64) -> !llvm.ptr<i8>
    %393 = llvm.bitcast %392 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %394 = llvm.ptrtoint %393 : !llvm.ptr<i32> to i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.sub %390, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.urem %397, %390  : i64
    %399 = llvm.sub %397, %398  : i64
    %400 = llvm.inttoptr %399 : i64 to !llvm.ptr<i32>
    %401 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %402 = llvm.insertvalue %393, %401[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %400, %402[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.insertvalue %404, %403[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %379, %405[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %380, %406[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %381, %407[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %382, %408[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %385, %409[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %384, %410[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %382, %411[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %383, %412[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%414 : i64)
  ^bb73(%417: i64):  // 2 preds: ^bb72, ^bb83
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%419 : i64)
  ^bb75(%422: i64):  // 2 preds: ^bb74, ^bb82
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%424 : i64)
  ^bb77(%427: i64):  // 2 preds: ^bb76, ^bb81
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.mlir.constant(5 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%429 : i64)
  ^bb79(%432: i64):  // 2 preds: ^bb78, ^bb80
    %433 = llvm.icmp "slt" %432, %430 : i64
    llvm.cond_br %433, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %434 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.mlir.constant(5 : index) : i64
    %436 = llvm.mul %417, %435  : i64
    %437 = llvm.mlir.constant(5 : index) : i64
    %438 = llvm.mul %422, %437  : i64
    %439 = llvm.add %436, %438  : i64
    %440 = llvm.mlir.constant(5 : index) : i64
    %441 = llvm.mul %427, %440  : i64
    %442 = llvm.add %439, %441  : i64
    %443 = llvm.add %442, %432  : i64
    %444 = llvm.getelementptr %434[%443] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %445 = llvm.load %444 : !llvm.ptr<i32>
    %446 = llvm.extractvalue %413[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mlir.constant(5 : index) : i64
    %448 = llvm.mul %417, %447  : i64
    %449 = llvm.mlir.constant(5 : index) : i64
    %450 = llvm.mul %422, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.mlir.constant(5 : index) : i64
    %453 = llvm.mul %427, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.add %454, %432  : i64
    %456 = llvm.getelementptr %446[%455] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %445, %456 : !llvm.ptr<i32>
    %457 = llvm.add %432, %431  : i64
    llvm.br ^bb79(%457 : i64)
  ^bb81:  // pred: ^bb79
    %458 = llvm.add %427, %426  : i64
    llvm.br ^bb77(%458 : i64)
  ^bb82:  // pred: ^bb77
    %459 = llvm.add %422, %421  : i64
    llvm.br ^bb75(%459 : i64)
  ^bb83:  // pred: ^bb75
    %460 = llvm.add %417, %416  : i64
    llvm.br ^bb73(%460 : i64)
  ^bb84:  // pred: ^bb73
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.constant(5 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.mlir.constant(5 : index) : i64
    %467 = llvm.mlir.constant(5 : index) : i64
    %468 = llvm.mlir.constant(5 : index) : i64
    %469 = llvm.mlir.null : !llvm.ptr<i32>
    %470 = llvm.getelementptr %469[%468] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %471 = llvm.ptrtoint %470 : !llvm.ptr<i32> to i64
    %472 = llvm.mlir.constant(16 : index) : i64
    %473 = llvm.add %471, %472  : i64
    %474 = llvm.call @malloc(%473) : (i64) -> !llvm.ptr<i8>
    %475 = llvm.bitcast %474 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %476 = llvm.ptrtoint %475 : !llvm.ptr<i32> to i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.sub %472, %477  : i64
    %479 = llvm.add %476, %478  : i64
    %480 = llvm.urem %479, %472  : i64
    %481 = llvm.sub %479, %480  : i64
    %482 = llvm.inttoptr %481 : i64 to !llvm.ptr<i32>
    %483 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %484 = llvm.insertvalue %475, %483[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.insertvalue %482, %484[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.insertvalue %486, %485[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %461, %487[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.insertvalue %462, %488[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %463, %489[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.insertvalue %464, %490[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.insertvalue %467, %491[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %466, %492[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %464, %493[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.insertvalue %465, %494[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.mlir.constant(0 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%496 : i64)
  ^bb85(%499: i64):  // 2 preds: ^bb84, ^bb95
    %500 = llvm.icmp "slt" %499, %497 : i64
    llvm.cond_br %500, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%501 : i64)
  ^bb87(%504: i64):  // 2 preds: ^bb86, ^bb94
    %505 = llvm.icmp "slt" %504, %502 : i64
    llvm.cond_br %505, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %506 = llvm.mlir.constant(0 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%506 : i64)
  ^bb89(%509: i64):  // 2 preds: ^bb88, ^bb93
    %510 = llvm.icmp "slt" %509, %507 : i64
    llvm.cond_br %510, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.mlir.constant(5 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%511 : i64)
  ^bb91(%514: i64):  // 2 preds: ^bb90, ^bb92
    %515 = llvm.icmp "slt" %514, %512 : i64
    llvm.cond_br %515, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %516 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.mlir.constant(5 : index) : i64
    %518 = llvm.mul %499, %517  : i64
    %519 = llvm.mlir.constant(5 : index) : i64
    %520 = llvm.mul %504, %519  : i64
    %521 = llvm.add %518, %520  : i64
    %522 = llvm.mlir.constant(5 : index) : i64
    %523 = llvm.mul %509, %522  : i64
    %524 = llvm.add %521, %523  : i64
    %525 = llvm.add %524, %514  : i64
    %526 = llvm.getelementptr %516[%525] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %527 = llvm.load %526 : !llvm.ptr<i32>
    %528 = llvm.sub %25, %527  : i32
    %529 = llvm.extractvalue %495[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.mlir.constant(5 : index) : i64
    %531 = llvm.mul %499, %530  : i64
    %532 = llvm.mlir.constant(5 : index) : i64
    %533 = llvm.mul %504, %532  : i64
    %534 = llvm.add %531, %533  : i64
    %535 = llvm.mlir.constant(5 : index) : i64
    %536 = llvm.mul %509, %535  : i64
    %537 = llvm.add %534, %536  : i64
    %538 = llvm.add %537, %514  : i64
    %539 = llvm.getelementptr %529[%538] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %528, %539 : !llvm.ptr<i32>
    %540 = llvm.add %514, %513  : i64
    llvm.br ^bb91(%540 : i64)
  ^bb93:  // pred: ^bb91
    %541 = llvm.add %509, %508  : i64
    llvm.br ^bb89(%541 : i64)
  ^bb94:  // pred: ^bb89
    %542 = llvm.add %504, %503  : i64
    llvm.br ^bb87(%542 : i64)
  ^bb95:  // pred: ^bb87
    %543 = llvm.add %499, %498  : i64
    llvm.br ^bb85(%543 : i64)
  ^bb96:  // pred: ^bb85
    %544 = llvm.mlir.constant(1 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.constant(5 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.mlir.constant(5 : index) : i64
    %549 = llvm.mlir.constant(5 : index) : i64
    %550 = llvm.mlir.null : !llvm.ptr<i32>
    %551 = llvm.getelementptr %550[%549] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %552 = llvm.ptrtoint %551 : !llvm.ptr<i32> to i64
    %553 = llvm.mlir.constant(16 : index) : i64
    %554 = llvm.add %552, %553  : i64
    %555 = llvm.call @malloc(%554) : (i64) -> !llvm.ptr<i8>
    %556 = llvm.bitcast %555 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %557 = llvm.ptrtoint %556 : !llvm.ptr<i32> to i64
    %558 = llvm.mlir.constant(1 : index) : i64
    %559 = llvm.sub %553, %558  : i64
    %560 = llvm.add %557, %559  : i64
    %561 = llvm.urem %560, %553  : i64
    %562 = llvm.sub %560, %561  : i64
    %563 = llvm.inttoptr %562 : i64 to !llvm.ptr<i32>
    %564 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %565 = llvm.insertvalue %556, %564[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %566 = llvm.insertvalue %563, %565[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %567 = llvm.mlir.constant(0 : index) : i64
    %568 = llvm.insertvalue %567, %566[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %569 = llvm.insertvalue %544, %568[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %570 = llvm.insertvalue %545, %569[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %571 = llvm.insertvalue %546, %570[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %572 = llvm.insertvalue %548, %571[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %573 = llvm.insertvalue %546, %572[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %574 = llvm.insertvalue %547, %573[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %575 = llvm.mlir.constant(0 : index) : i64
    %576 = llvm.mlir.constant(1 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%575 : i64)
  ^bb97(%578: i64):  // 2 preds: ^bb96, ^bb104
    %579 = llvm.icmp "slt" %578, %576 : i64
    llvm.cond_br %579, ^bb98, ^bb105
  ^bb98:  // pred: ^bb97
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    %582 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%580 : i64)
  ^bb99(%583: i64):  // 2 preds: ^bb98, ^bb103
    %584 = llvm.icmp "slt" %583, %581 : i64
    llvm.cond_br %584, ^bb100, ^bb104
  ^bb100:  // pred: ^bb99
    %585 = llvm.mlir.constant(0 : index) : i64
    %586 = llvm.mlir.constant(5 : index) : i64
    %587 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%585 : i64)
  ^bb101(%588: i64):  // 2 preds: ^bb100, ^bb102
    %589 = llvm.icmp "slt" %588, %586 : i64
    llvm.cond_br %589, ^bb102, ^bb103
  ^bb102:  // pred: ^bb101
    %590 = llvm.extractvalue %574[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %591 = llvm.mlir.constant(5 : index) : i64
    %592 = llvm.mul %578, %591  : i64
    %593 = llvm.mlir.constant(5 : index) : i64
    %594 = llvm.mul %583, %593  : i64
    %595 = llvm.add %592, %594  : i64
    %596 = llvm.add %595, %588  : i64
    %597 = llvm.getelementptr %590[%596] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %24, %597 : !llvm.ptr<i32>
    %598 = llvm.add %588, %587  : i64
    llvm.br ^bb101(%598 : i64)
  ^bb103:  // pred: ^bb101
    %599 = llvm.add %583, %582  : i64
    llvm.br ^bb99(%599 : i64)
  ^bb104:  // pred: ^bb99
    %600 = llvm.add %578, %577  : i64
    llvm.br ^bb97(%600 : i64)
  ^bb105:  // pred: ^bb97
    %601 = llvm.mlir.constant(0 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%601 : i64)
  ^bb106(%604: i64):  // 2 preds: ^bb105, ^bb116
    %605 = llvm.icmp "slt" %604, %602 : i64
    llvm.cond_br %605, ^bb107, ^bb117
  ^bb107:  // pred: ^bb106
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb108(%606 : i64)
  ^bb108(%609: i64):  // 2 preds: ^bb107, ^bb115
    %610 = llvm.icmp "slt" %609, %607 : i64
    llvm.cond_br %610, ^bb109, ^bb116
  ^bb109:  // pred: ^bb108
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb110(%611 : i64)
  ^bb110(%614: i64):  // 2 preds: ^bb109, ^bb114
    %615 = llvm.icmp "slt" %614, %612 : i64
    llvm.cond_br %615, ^bb111, ^bb115
  ^bb111:  // pred: ^bb110
    %616 = llvm.mlir.constant(0 : index) : i64
    %617 = llvm.mlir.constant(5 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%616 : i64)
  ^bb112(%619: i64):  // 2 preds: ^bb111, ^bb113
    %620 = llvm.icmp "slt" %619, %617 : i64
    llvm.cond_br %620, ^bb113, ^bb114
  ^bb113:  // pred: ^bb112
    %621 = llvm.extractvalue %495[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.mlir.constant(5 : index) : i64
    %623 = llvm.mul %604, %622  : i64
    %624 = llvm.mlir.constant(5 : index) : i64
    %625 = llvm.mul %609, %624  : i64
    %626 = llvm.add %623, %625  : i64
    %627 = llvm.mlir.constant(5 : index) : i64
    %628 = llvm.mul %614, %627  : i64
    %629 = llvm.add %626, %628  : i64
    %630 = llvm.add %629, %619  : i64
    %631 = llvm.getelementptr %621[%630] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %632 = llvm.load %631 : !llvm.ptr<i32>
    %633 = llvm.extractvalue %574[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %634 = llvm.mlir.constant(5 : index) : i64
    %635 = llvm.mul %604, %634  : i64
    %636 = llvm.mlir.constant(5 : index) : i64
    %637 = llvm.mul %609, %636  : i64
    %638 = llvm.add %635, %637  : i64
    %639 = llvm.add %638, %619  : i64
    %640 = llvm.getelementptr %633[%639] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %641 = llvm.load %640 : !llvm.ptr<i32>
    %642 = llvm.icmp "slt" %641, %632 : i32
    %643 = llvm.select %642, %641, %632 : i1, i32
    %644 = llvm.extractvalue %574[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %645 = llvm.mlir.constant(5 : index) : i64
    %646 = llvm.mul %604, %645  : i64
    %647 = llvm.mlir.constant(5 : index) : i64
    %648 = llvm.mul %609, %647  : i64
    %649 = llvm.add %646, %648  : i64
    %650 = llvm.add %649, %619  : i64
    %651 = llvm.getelementptr %644[%650] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %643, %651 : !llvm.ptr<i32>
    %652 = llvm.add %619, %618  : i64
    llvm.br ^bb112(%652 : i64)
  ^bb114:  // pred: ^bb112
    %653 = llvm.add %614, %613  : i64
    llvm.br ^bb110(%653 : i64)
  ^bb115:  // pred: ^bb110
    %654 = llvm.add %609, %608  : i64
    llvm.br ^bb108(%654 : i64)
  ^bb116:  // pred: ^bb108
    %655 = llvm.add %604, %603  : i64
    llvm.br ^bb106(%655 : i64)
  ^bb117:  // pred: ^bb106
    %656 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %657 = llvm.insertvalue %413, %656[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %658 = llvm.insertvalue %574, %657[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %658 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0", "v0_0"], llvm.emit_c_interface, output_names = ["v9_0", "v8_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %100[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %101[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.getelementptr %91[%122] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %123 : !llvm.ptr<ptr<i8>>
    %124 = llvm.mlir.constant(3 : i64) : i64
    %125 = llvm.call @omTensorCreateUntyped(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %129 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%125, %126, %128, %130) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %131 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%125, %131) : (!llvm.ptr<i8>, i64) -> ()
    %132 = llvm.call @omTensorGetShape(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.call @omTensorGetStrides(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.getelementptr %132[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.getelementptr %133[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.getelementptr %132[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.getelementptr %133[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.getelementptr %132[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %148 = llvm.getelementptr %133[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.getelementptr %91[%149] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %125, %150 : !llvm.ptr<ptr<i8>>
    %151 = llvm.call @omTensorListCreate(%91, %88, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %151 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

