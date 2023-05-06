module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v1_0"]} {
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
    %24 = llvm.mlir.constant(0 : i64) : i64
    %25 = llvm.mlir.constant(-1 : i64) : i64
    %26 = llvm.mlir.constant(0 : i32) : i32
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.mlir.constant(8 : index) : i64
    %35 = llvm.mlir.constant(16 : index) : i64
    %36 = llvm.mlir.null : !llvm.ptr<i32>
    %37 = llvm.getelementptr %36[%35] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %38 = llvm.ptrtoint %37 : !llvm.ptr<i32> to i64
    %39 = llvm.mlir.constant(16 : index) : i64
    %40 = llvm.add %38, %39  : i64
    %41 = llvm.call @malloc(%40) : (i64) -> !llvm.ptr<i8>
    %42 = llvm.bitcast %41 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i32> to i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.sub %39, %44  : i64
    %46 = llvm.add %43, %45  : i64
    %47 = llvm.urem %46, %39  : i64
    %48 = llvm.sub %46, %47  : i64
    %49 = llvm.inttoptr %48 : i64 to !llvm.ptr<i32>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %51 = llvm.insertvalue %42, %50[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %28, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %34, %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %31, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %32, %61[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%63 : i64)
  ^bb1(%66: i64):  // 2 preds: ^bb0, ^bb11
    %67 = llvm.icmp "slt" %66, %64 : i64
    llvm.cond_br %67, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%68 : i64)
  ^bb3(%71: i64):  // 2 preds: ^bb2, ^bb10
    %72 = llvm.icmp "slt" %71, %69 : i64
    llvm.cond_br %72, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%73 : i64)
  ^bb5(%76: i64):  // 2 preds: ^bb4, ^bb9
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%78 : i64)
  ^bb7(%81: i64):  // 2 preds: ^bb6, ^bb8
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %83 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(4 : index) : i64
    %85 = llvm.mul %66, %84  : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mul %71, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mul %27, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.add %91, %81  : i64
    %93 = llvm.getelementptr %83[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %94 = llvm.load %93 : !llvm.ptr<i32>
    %95 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mul %66, %96  : i64
    %98 = llvm.mlir.constant(4 : index) : i64
    %99 = llvm.mul %27, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mul %76, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.add %103, %81  : i64
    %105 = llvm.getelementptr %95[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %106 = llvm.load %105 : !llvm.ptr<i32>
    %107 = llvm.mul %94, %106  : i32
    %108 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(8 : index) : i64
    %110 = llvm.mul %66, %109  : i64
    %111 = llvm.mlir.constant(4 : index) : i64
    %112 = llvm.mul %71, %111  : i64
    %113 = llvm.add %110, %112  : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mul %76, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.add %116, %81  : i64
    %118 = llvm.getelementptr %108[%117] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %107, %118 : !llvm.ptr<i32>
    %119 = llvm.add %81, %80  : i64
    llvm.br ^bb7(%119 : i64)
  ^bb9:  // pred: ^bb7
    %120 = llvm.add %76, %75  : i64
    llvm.br ^bb5(%120 : i64)
  ^bb10:  // pred: ^bb5
    %121 = llvm.add %71, %70  : i64
    llvm.br ^bb3(%121 : i64)
  ^bb11:  // pred: ^bb3
    %122 = llvm.add %66, %65  : i64
    llvm.br ^bb1(%122 : i64)
  ^bb12:  // pred: ^bb1
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(4 : index) : i64
    %129 = llvm.mlir.constant(8 : index) : i64
    %130 = llvm.mlir.constant(16 : index) : i64
    %131 = llvm.mlir.null : !llvm.ptr<i32>
    %132 = llvm.getelementptr %131[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %133 = llvm.ptrtoint %132 : !llvm.ptr<i32> to i64
    %134 = llvm.mlir.constant(16 : index) : i64
    %135 = llvm.add %133, %134  : i64
    %136 = llvm.call @malloc(%135) : (i64) -> !llvm.ptr<i8>
    %137 = llvm.bitcast %136 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<i32> to i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.sub %134, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.urem %141, %134  : i64
    %143 = llvm.sub %141, %142  : i64
    %144 = llvm.inttoptr %143 : i64 to !llvm.ptr<i32>
    %145 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %146 = llvm.insertvalue %137, %145[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %144, %146[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.insertvalue %148, %147[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %123, %149[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %124, %150[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %125, %151[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %126, %152[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %129, %153[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %126, %155[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %127, %156[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(2 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%158 : i64)
  ^bb13(%161: i64):  // 2 preds: ^bb12, ^bb23
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%163 : i64)
  ^bb15(%166: i64):  // 2 preds: ^bb14, ^bb22
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%168 : i64)
  ^bb17(%171: i64):  // 2 preds: ^bb16, ^bb21
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%173 : i64)
  ^bb19(%176: i64):  // 2 preds: ^bb18, ^bb20
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %178 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.mlir.constant(8 : index) : i64
    %180 = llvm.mul %161, %179  : i64
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mul %166, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mul %171, %184  : i64
    %186 = llvm.add %183, %185  : i64
    %187 = llvm.add %186, %176  : i64
    %188 = llvm.getelementptr %178[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %189 = llvm.load %188 : !llvm.ptr<i32>
    %190 = llvm.sub %26, %189  : i32
    %191 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.mlir.constant(8 : index) : i64
    %193 = llvm.mul %161, %192  : i64
    %194 = llvm.mlir.constant(4 : index) : i64
    %195 = llvm.mul %166, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.mul %171, %197  : i64
    %199 = llvm.add %196, %198  : i64
    %200 = llvm.add %199, %176  : i64
    %201 = llvm.getelementptr %191[%200] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %190, %201 : !llvm.ptr<i32>
    %202 = llvm.add %176, %175  : i64
    llvm.br ^bb19(%202 : i64)
  ^bb21:  // pred: ^bb19
    %203 = llvm.add %171, %170  : i64
    llvm.br ^bb17(%203 : i64)
  ^bb22:  // pred: ^bb17
    %204 = llvm.add %166, %165  : i64
    llvm.br ^bb15(%204 : i64)
  ^bb23:  // pred: ^bb15
    %205 = llvm.add %161, %160  : i64
    llvm.br ^bb13(%205 : i64)
  ^bb24:  // pred: ^bb13
    %206 = llvm.mlir.constant(2 : index) : i64
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(4 : index) : i64
    %211 = llvm.mlir.constant(8 : index) : i64
    %212 = llvm.mlir.null : !llvm.ptr<i64>
    %213 = llvm.getelementptr %212[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<i64> to i64
    %215 = llvm.mlir.constant(16 : index) : i64
    %216 = llvm.add %214, %215  : i64
    %217 = llvm.call @malloc(%216) : (i64) -> !llvm.ptr<i8>
    %218 = llvm.bitcast %217 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %219 = llvm.ptrtoint %218 : !llvm.ptr<i64> to i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.sub %215, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.urem %222, %215  : i64
    %224 = llvm.sub %222, %223  : i64
    %225 = llvm.inttoptr %224 : i64 to !llvm.ptr<i64>
    %226 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %227 = llvm.insertvalue %218, %226[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.insertvalue %225, %227[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.insertvalue %229, %228[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %231 = llvm.insertvalue %206, %230[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.insertvalue %207, %231[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.insertvalue %208, %232[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.insertvalue %210, %233[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %235 = llvm.insertvalue %208, %234[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %236 = llvm.insertvalue %209, %235[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%237 : i64)
  ^bb25(%240: i64):  // 2 preds: ^bb24, ^bb32
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%242 : i64)
  ^bb27(%245: i64):  // 2 preds: ^bb26, ^bb31
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%247 : i64)
  ^bb29(%250: i64):  // 2 preds: ^bb28, ^bb30
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %252 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %253 = llvm.mlir.constant(4 : index) : i64
    %254 = llvm.mul %240, %253  : i64
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mul %245, %255  : i64
    %257 = llvm.add %254, %256  : i64
    %258 = llvm.add %257, %250  : i64
    %259 = llvm.getelementptr %252[%258] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %259 : !llvm.ptr<i64>
    %260 = llvm.add %250, %249  : i64
    llvm.br ^bb29(%260 : i64)
  ^bb31:  // pred: ^bb29
    %261 = llvm.add %245, %244  : i64
    llvm.br ^bb27(%261 : i64)
  ^bb32:  // pred: ^bb27
    %262 = llvm.add %240, %239  : i64
    llvm.br ^bb25(%262 : i64)
  ^bb33:  // pred: ^bb25
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%263 : i64)
  ^bb34(%266: i64):  // 2 preds: ^bb33, ^bb44
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(2 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%268 : i64)
  ^bb36(%271: i64):  // 2 preds: ^bb35, ^bb43
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%273 : i64)
  ^bb38(%276: i64):  // 2 preds: ^bb37, ^bb42
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%278 : i64)
  ^bb40(%281: i64):  // 2 preds: ^bb39, ^bb41
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %283 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.mlir.constant(8 : index) : i64
    %285 = llvm.mul %266, %284  : i64
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mul %271, %286  : i64
    %288 = llvm.add %285, %287  : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mul %276, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.add %291, %281  : i64
    %293 = llvm.getelementptr %283[%292] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %294 = llvm.load %293 : !llvm.ptr<i32>
    %295 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mul %266, %296  : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mul %271, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.add %300, %276  : i64
    %302 = llvm.getelementptr %295[%301] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %303 = llvm.load %302 : !llvm.ptr<i64>
    %304 = llvm.icmp "slt" %303, %24 : i64
    %305 = llvm.select %304, %24, %303 : i1, i64
    %306 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.mlir.constant(8 : index) : i64
    %308 = llvm.mul %266, %307  : i64
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mul %271, %309  : i64
    %311 = llvm.add %308, %310  : i64
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mul %276, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.add %314, %305  : i64
    %316 = llvm.getelementptr %306[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %317 = llvm.load %316 : !llvm.ptr<i32>
    %318 = llvm.icmp "slt" %294, %317 : i32
    %319 = llvm.select %318, %281, %305 : i1, i64
    %320 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mul %266, %321  : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mul %271, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.add %325, %276  : i64
    %327 = llvm.getelementptr %320[%326] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %319, %327 : !llvm.ptr<i64>
    %328 = llvm.add %281, %280  : i64
    llvm.br ^bb40(%328 : i64)
  ^bb42:  // pred: ^bb40
    %329 = llvm.add %276, %275  : i64
    llvm.br ^bb38(%329 : i64)
  ^bb43:  // pred: ^bb38
    %330 = llvm.add %271, %270  : i64
    llvm.br ^bb36(%330 : i64)
  ^bb44:  // pred: ^bb36
    %331 = llvm.add %266, %265  : i64
    llvm.br ^bb34(%331 : i64)
  ^bb45:  // pred: ^bb34
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mlir.constant(8 : index) : i64
    %338 = llvm.mlir.null : !llvm.ptr<i64>
    %339 = llvm.getelementptr %338[%337] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %340 = llvm.ptrtoint %339 : !llvm.ptr<i64> to i64
    %341 = llvm.mlir.constant(16 : index) : i64
    %342 = llvm.add %340, %341  : i64
    %343 = llvm.call @malloc(%342) : (i64) -> !llvm.ptr<i8>
    %344 = llvm.bitcast %343 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %345 = llvm.ptrtoint %344 : !llvm.ptr<i64> to i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.sub %341, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.urem %348, %341  : i64
    %350 = llvm.sub %348, %349  : i64
    %351 = llvm.inttoptr %350 : i64 to !llvm.ptr<i64>
    %352 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %353 = llvm.insertvalue %344, %352[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.insertvalue %351, %353[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.insertvalue %355, %354[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.insertvalue %332, %356[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %358 = llvm.insertvalue %333, %357[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %359 = llvm.insertvalue %334, %358[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %360 = llvm.insertvalue %336, %359[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %361 = llvm.insertvalue %334, %360[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %362 = llvm.insertvalue %335, %361[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(2 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%363 : i64)
  ^bb46(%366: i64):  // 2 preds: ^bb45, ^bb53
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%368 : i64)
  ^bb48(%371: i64):  // 2 preds: ^bb47, ^bb52
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(2 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%373 : i64)
  ^bb50(%376: i64):  // 2 preds: ^bb49, ^bb51
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %378 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %379 = llvm.mlir.constant(4 : index) : i64
    %380 = llvm.mul %366, %379  : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mul %371, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %376  : i64
    %385 = llvm.getelementptr %378[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.load %385 : !llvm.ptr<i64>
    %387 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %388 = llvm.mlir.constant(4 : index) : i64
    %389 = llvm.mul %366, %388  : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %371, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.add %392, %376  : i64
    %394 = llvm.getelementptr %387[%393] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %395 = llvm.load %394 : !llvm.ptr<i64>
    %396 = llvm.mul %386, %395  : i64
    %397 = llvm.extractvalue %362[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %398 = llvm.mlir.constant(4 : index) : i64
    %399 = llvm.mul %366, %398  : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mul %371, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.add %402, %376  : i64
    %404 = llvm.getelementptr %397[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %396, %404 : !llvm.ptr<i64>
    %405 = llvm.add %376, %375  : i64
    llvm.br ^bb50(%405 : i64)
  ^bb52:  // pred: ^bb50
    %406 = llvm.add %371, %370  : i64
    llvm.br ^bb48(%406 : i64)
  ^bb53:  // pred: ^bb48
    %407 = llvm.add %366, %365  : i64
    llvm.br ^bb46(%407 : i64)
  ^bb54:  // pred: ^bb46
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(4 : index) : i64
    %414 = llvm.mlir.constant(8 : index) : i64
    %415 = llvm.mlir.constant(16 : index) : i64
    %416 = llvm.mlir.null : !llvm.ptr<i32>
    %417 = llvm.getelementptr %416[%415] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %418 = llvm.ptrtoint %417 : !llvm.ptr<i32> to i64
    %419 = llvm.mlir.constant(16 : index) : i64
    %420 = llvm.add %418, %419  : i64
    %421 = llvm.call @malloc(%420) : (i64) -> !llvm.ptr<i8>
    %422 = llvm.bitcast %421 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %423 = llvm.ptrtoint %422 : !llvm.ptr<i32> to i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.sub %419, %424  : i64
    %426 = llvm.add %423, %425  : i64
    %427 = llvm.urem %426, %419  : i64
    %428 = llvm.sub %426, %427  : i64
    %429 = llvm.inttoptr %428 : i64 to !llvm.ptr<i32>
    %430 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %431 = llvm.insertvalue %422, %430[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %429, %431[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.insertvalue %433, %432[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %408, %434[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %409, %435[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %410, %436[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %411, %437[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %414, %438[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %413, %439[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %411, %440[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %412, %441[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%443 : i64)
  ^bb55(%446: i64):  // 2 preds: ^bb54, ^bb65
    %447 = llvm.icmp "slt" %446, %444 : i64
    llvm.cond_br %447, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(2 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%448 : i64)
  ^bb57(%451: i64):  // 2 preds: ^bb56, ^bb64
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(2 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%453 : i64)
  ^bb59(%456: i64):  // 2 preds: ^bb58, ^bb63
    %457 = llvm.icmp "slt" %456, %454 : i64
    llvm.cond_br %457, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.mlir.constant(2 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%458 : i64)
  ^bb61(%461: i64):  // 2 preds: ^bb60, ^bb62
    %462 = llvm.icmp "slt" %461, %459 : i64
    llvm.cond_br %462, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %463 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.mlir.constant(8 : index) : i64
    %465 = llvm.mul %446, %464  : i64
    %466 = llvm.mlir.constant(4 : index) : i64
    %467 = llvm.mul %451, %466  : i64
    %468 = llvm.add %465, %467  : i64
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mul %456, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.add %471, %461  : i64
    %473 = llvm.getelementptr %463[%472] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %474 = llvm.load %473 : !llvm.ptr<i32>
    %475 = llvm.sub %26, %474  : i32
    %476 = llvm.extractvalue %442[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.mlir.constant(8 : index) : i64
    %478 = llvm.mul %446, %477  : i64
    %479 = llvm.mlir.constant(4 : index) : i64
    %480 = llvm.mul %451, %479  : i64
    %481 = llvm.add %478, %480  : i64
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mul %456, %482  : i64
    %484 = llvm.add %481, %483  : i64
    %485 = llvm.add %484, %461  : i64
    %486 = llvm.getelementptr %476[%485] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %475, %486 : !llvm.ptr<i32>
    %487 = llvm.add %461, %460  : i64
    llvm.br ^bb61(%487 : i64)
  ^bb63:  // pred: ^bb61
    %488 = llvm.add %456, %455  : i64
    llvm.br ^bb59(%488 : i64)
  ^bb64:  // pred: ^bb59
    %489 = llvm.add %451, %450  : i64
    llvm.br ^bb57(%489 : i64)
  ^bb65:  // pred: ^bb57
    %490 = llvm.add %446, %445  : i64
    llvm.br ^bb55(%490 : i64)
  ^bb66:  // pred: ^bb55
    %491 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %492 = llvm.insertvalue %362, %491[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %493 = llvm.insertvalue %442, %492[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %493 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v1_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(3 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(0 : i64) : i64
    %118 = llvm.getelementptr %91[%117] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %118 : !llvm.ptr<ptr<i8>>
    %119 = llvm.mlir.constant(4 : i64) : i64
    %120 = llvm.call @omTensorCreateUntyped(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %124 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.bitcast %124 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%120, %121, %123, %125) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %126 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%120, %126) : (!llvm.ptr<i8>, i64) -> ()
    %127 = llvm.call @omTensorGetShape(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %128 = llvm.call @omTensorGetStrides(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %127[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %128[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %127[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %128[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(2 : i64) : i64
    %140 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %127[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %128[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(3 : i64) : i64
    %145 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %127[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %128[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.getelementptr %91[%149] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %120, %150 : !llvm.ptr<ptr<i8>>
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

