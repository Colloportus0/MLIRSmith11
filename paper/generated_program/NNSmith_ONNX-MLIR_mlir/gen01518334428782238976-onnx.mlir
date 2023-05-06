module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 4 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[4], [5]]]]> : tensor<1x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v0_0"]} {
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
    %12 = llvm.mlir.constant(2147483647 : i32) : i32
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x i32>>>>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(2 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.mlir.constant(4 : index) : i64
    %45 = llvm.mlir.null : !llvm.ptr<i32>
    %46 = llvm.getelementptr %45[%44] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %48 = llvm.mlir.constant(16 : index) : i64
    %49 = llvm.add %47, %48  : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr<i32> to i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.sub %48, %53  : i64
    %55 = llvm.add %52, %54  : i64
    %56 = llvm.urem %55, %48  : i64
    %57 = llvm.sub %55, %56  : i64
    %58 = llvm.inttoptr %57 : i64 to !llvm.ptr<i32>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %60 = llvm.insertvalue %51, %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %37, %63[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %38, %64[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %39, %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %40, %66[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %43, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %42, %68[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %40, %69[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %41, %70[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%72 : i64)
  ^bb1(%75: i64):  // 2 preds: ^bb0, ^bb11
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%77 : i64)
  ^bb3(%80: i64):  // 2 preds: ^bb2, ^bb10
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%82 : i64)
  ^bb5(%85: i64):  // 2 preds: ^bb4, ^bb9
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%87 : i64)
  ^bb7(%90: i64):  // 2 preds: ^bb6, ^bb8
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %92 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mul %75, %93  : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mul %80, %95  : i64
    %97 = llvm.add %94, %96  : i64
    %98 = llvm.add %97, %85  : i64
    %99 = llvm.add %98, %90  : i64
    %100 = llvm.getelementptr %92[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %101 = llvm.load %100 : !llvm.ptr<i32>
    %102 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(4 : index) : i64
    %104 = llvm.mul %75, %103  : i64
    %105 = llvm.mlir.constant(4 : index) : i64
    %106 = llvm.mul %80, %105  : i64
    %107 = llvm.add %104, %106  : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %85, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.add %110, %90  : i64
    %112 = llvm.getelementptr %102[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %101, %112 : !llvm.ptr<i32>
    %113 = llvm.add %90, %89  : i64
    llvm.br ^bb7(%113 : i64)
  ^bb9:  // pred: ^bb7
    %114 = llvm.add %85, %84  : i64
    llvm.br ^bb5(%114 : i64)
  ^bb10:  // pred: ^bb5
    %115 = llvm.add %80, %79  : i64
    llvm.br ^bb3(%115 : i64)
  ^bb11:  // pred: ^bb3
    %116 = llvm.add %75, %74  : i64
    llvm.br ^bb1(%116 : i64)
  ^bb12:  // pred: ^bb1
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%117 : i64)
  ^bb13(%120: i64):  // 2 preds: ^bb12, ^bb23
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%122 : i64)
  ^bb15(%125: i64):  // 2 preds: ^bb14, ^bb22
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%127 : i64)
  ^bb17(%130: i64):  // 2 preds: ^bb16, ^bb21
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%132 : i64)
  ^bb19(%135: i64):  // 2 preds: ^bb18, ^bb20
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.add %135, %137  : i64
    %139 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mul %120, %140  : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mul %125, %142  : i64
    %144 = llvm.add %141, %143  : i64
    %145 = llvm.add %144, %130  : i64
    %146 = llvm.add %145, %135  : i64
    %147 = llvm.getelementptr %139[%146] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %148 = llvm.load %147 : !llvm.ptr<i32>
    %149 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(4 : index) : i64
    %151 = llvm.mul %120, %150  : i64
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mul %125, %152  : i64
    %154 = llvm.add %151, %153  : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mul %130, %155  : i64
    %157 = llvm.add %154, %156  : i64
    %158 = llvm.add %157, %138  : i64
    %159 = llvm.getelementptr %149[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %148, %159 : !llvm.ptr<i32>
    %160 = llvm.add %135, %134  : i64
    llvm.br ^bb19(%160 : i64)
  ^bb21:  // pred: ^bb19
    %161 = llvm.add %130, %129  : i64
    llvm.br ^bb17(%161 : i64)
  ^bb22:  // pred: ^bb17
    %162 = llvm.add %125, %124  : i64
    llvm.br ^bb15(%162 : i64)
  ^bb23:  // pred: ^bb15
    %163 = llvm.add %120, %119  : i64
    llvm.br ^bb13(%163 : i64)
  ^bb24:  // pred: ^bb13
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(4 : index) : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(4 : index) : i64
    %170 = llvm.mlir.constant(16 : index) : i64
    %171 = llvm.mlir.constant(16 : index) : i64
    %172 = llvm.mlir.null : !llvm.ptr<i32>
    %173 = llvm.getelementptr %172[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %174 = llvm.ptrtoint %173 : !llvm.ptr<i32> to i64
    %175 = llvm.mlir.constant(16 : index) : i64
    %176 = llvm.add %174, %175  : i64
    %177 = llvm.call @malloc(%176) : (i64) -> !llvm.ptr<i8>
    %178 = llvm.bitcast %177 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %179 = llvm.ptrtoint %178 : !llvm.ptr<i32> to i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.sub %175, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.urem %182, %175  : i64
    %184 = llvm.sub %182, %183  : i64
    %185 = llvm.inttoptr %184 : i64 to !llvm.ptr<i32>
    %186 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %187 = llvm.insertvalue %178, %186[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %185, %187[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.insertvalue %189, %188[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %164, %190[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %165, %191[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %166, %192[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %167, %193[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %170, %194[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %169, %195[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %167, %196[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %168, %197[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%199 : i64)
  ^bb25(%202: i64):  // 2 preds: ^bb24, ^bb35
    %203 = llvm.icmp "slt" %202, %200 : i64
    llvm.cond_br %203, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%204 : i64)
  ^bb27(%207: i64):  // 2 preds: ^bb26, ^bb34
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%209 : i64)
  ^bb29(%212: i64):  // 2 preds: ^bb28, ^bb33
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%214 : i64)
  ^bb31(%217: i64):  // 2 preds: ^bb30, ^bb32
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %219 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.mlir.constant(4 : index) : i64
    %221 = llvm.mul %202, %220  : i64
    %222 = llvm.mlir.constant(4 : index) : i64
    %223 = llvm.mul %207, %222  : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mul %212, %225  : i64
    %227 = llvm.add %224, %226  : i64
    %228 = llvm.add %227, %217  : i64
    %229 = llvm.getelementptr %219[%228] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %230 = llvm.load %229 : !llvm.ptr<i32>
    %231 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(16 : index) : i64
    %233 = llvm.mul %202, %232  : i64
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mul %207, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mul %212, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.add %239, %217  : i64
    %241 = llvm.getelementptr %231[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %230, %241 : !llvm.ptr<i32>
    %242 = llvm.add %217, %216  : i64
    llvm.br ^bb31(%242 : i64)
  ^bb33:  // pred: ^bb31
    %243 = llvm.add %212, %211  : i64
    llvm.br ^bb29(%243 : i64)
  ^bb34:  // pred: ^bb29
    %244 = llvm.add %207, %206  : i64
    llvm.br ^bb27(%244 : i64)
  ^bb35:  // pred: ^bb27
    %245 = llvm.add %202, %201  : i64
    llvm.br ^bb25(%245 : i64)
  ^bb36:  // pred: ^bb25
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%246 : i64)
  ^bb37(%249: i64):  // 2 preds: ^bb36, ^bb47
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%251 : i64)
  ^bb39(%254: i64):  // 2 preds: ^bb38, ^bb46
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%256 : i64)
  ^bb41(%259: i64):  // 2 preds: ^bb40, ^bb45
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%261 : i64)
  ^bb43(%264: i64):  // 2 preds: ^bb42, ^bb44
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.add %254, %266  : i64
    %268 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.mlir.constant(4 : index) : i64
    %270 = llvm.mul %249, %269  : i64
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mul %254, %271  : i64
    %273 = llvm.add %270, %272  : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mul %259, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.add %276, %264  : i64
    %278 = llvm.getelementptr %268[%277] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %279 = llvm.load %278 : !llvm.ptr<i32>
    %280 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.mlir.constant(16 : index) : i64
    %282 = llvm.mul %249, %281  : i64
    %283 = llvm.mlir.constant(4 : index) : i64
    %284 = llvm.mul %267, %283  : i64
    %285 = llvm.add %282, %284  : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mul %259, %286  : i64
    %288 = llvm.add %285, %287  : i64
    %289 = llvm.add %288, %264  : i64
    %290 = llvm.getelementptr %280[%289] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %279, %290 : !llvm.ptr<i32>
    %291 = llvm.add %264, %263  : i64
    llvm.br ^bb43(%291 : i64)
  ^bb45:  // pred: ^bb43
    %292 = llvm.add %259, %258  : i64
    llvm.br ^bb41(%292 : i64)
  ^bb46:  // pred: ^bb41
    %293 = llvm.add %254, %253  : i64
    llvm.br ^bb39(%293 : i64)
  ^bb47:  // pred: ^bb39
    %294 = llvm.add %249, %248  : i64
    llvm.br ^bb37(%294 : i64)
  ^bb48:  // pred: ^bb37
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%295 : i64)
  ^bb49(%298: i64):  // 2 preds: ^bb48, ^bb59
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%300 : i64)
  ^bb51(%303: i64):  // 2 preds: ^bb50, ^bb58
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%305 : i64)
  ^bb53(%308: i64):  // 2 preds: ^bb52, ^bb57
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%310 : i64)
  ^bb55(%313: i64):  // 2 preds: ^bb54, ^bb56
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.add %303, %315  : i64
    %317 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.mlir.constant(4 : index) : i64
    %319 = llvm.mul %298, %318  : i64
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mul %303, %320  : i64
    %322 = llvm.add %319, %321  : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mul %308, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.add %325, %313  : i64
    %327 = llvm.getelementptr %317[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %328 = llvm.load %327 : !llvm.ptr<i32>
    %329 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.mlir.constant(16 : index) : i64
    %331 = llvm.mul %298, %330  : i64
    %332 = llvm.mlir.constant(4 : index) : i64
    %333 = llvm.mul %316, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mul %308, %335  : i64
    %337 = llvm.add %334, %336  : i64
    %338 = llvm.add %337, %313  : i64
    %339 = llvm.getelementptr %329[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %328, %339 : !llvm.ptr<i32>
    %340 = llvm.add %313, %312  : i64
    llvm.br ^bb55(%340 : i64)
  ^bb57:  // pred: ^bb55
    %341 = llvm.add %308, %307  : i64
    llvm.br ^bb53(%341 : i64)
  ^bb58:  // pred: ^bb53
    %342 = llvm.add %303, %302  : i64
    llvm.br ^bb51(%342 : i64)
  ^bb59:  // pred: ^bb51
    %343 = llvm.add %298, %297  : i64
    llvm.br ^bb49(%343 : i64)
  ^bb60:  // pred: ^bb49
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%344 : i64)
  ^bb61(%347: i64):  // 2 preds: ^bb60, ^bb71
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%349 : i64)
  ^bb63(%352: i64):  // 2 preds: ^bb62, ^bb70
    %353 = llvm.icmp "slt" %352, %350 : i64
    llvm.cond_br %353, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%354 : i64)
  ^bb65(%357: i64):  // 2 preds: ^bb64, ^bb69
    %358 = llvm.icmp "slt" %357, %355 : i64
    llvm.cond_br %358, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(2 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%359 : i64)
  ^bb67(%362: i64):  // 2 preds: ^bb66, ^bb68
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %364 = llvm.mlir.constant(3 : index) : i64
    %365 = llvm.add %352, %364  : i64
    %366 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(4 : index) : i64
    %368 = llvm.mul %347, %367  : i64
    %369 = llvm.mlir.constant(4 : index) : i64
    %370 = llvm.mul %352, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mul %357, %372  : i64
    %374 = llvm.add %371, %373  : i64
    %375 = llvm.add %374, %362  : i64
    %376 = llvm.getelementptr %366[%375] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %377 = llvm.load %376 : !llvm.ptr<i32>
    %378 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(16 : index) : i64
    %380 = llvm.mul %347, %379  : i64
    %381 = llvm.mlir.constant(4 : index) : i64
    %382 = llvm.mul %365, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.mlir.constant(2 : index) : i64
    %385 = llvm.mul %357, %384  : i64
    %386 = llvm.add %383, %385  : i64
    %387 = llvm.add %386, %362  : i64
    %388 = llvm.getelementptr %378[%387] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %377, %388 : !llvm.ptr<i32>
    %389 = llvm.add %362, %361  : i64
    llvm.br ^bb67(%389 : i64)
  ^bb69:  // pred: ^bb67
    %390 = llvm.add %357, %356  : i64
    llvm.br ^bb65(%390 : i64)
  ^bb70:  // pred: ^bb65
    %391 = llvm.add %352, %351  : i64
    llvm.br ^bb63(%391 : i64)
  ^bb71:  // pred: ^bb63
    %392 = llvm.add %347, %346  : i64
    llvm.br ^bb61(%392 : i64)
  ^bb72:  // pred: ^bb61
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.mlir.constant(4 : index) : i64
    %399 = llvm.mlir.constant(16 : index) : i64
    %400 = llvm.mlir.constant(16 : index) : i64
    %401 = llvm.mlir.null : !llvm.ptr<i1>
    %402 = llvm.getelementptr %401[%400] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i1> to i64
    %404 = llvm.mlir.constant(16 : index) : i64
    %405 = llvm.add %403, %404  : i64
    %406 = llvm.call @malloc(%405) : (i64) -> !llvm.ptr<i8>
    %407 = llvm.bitcast %406 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %408 = llvm.ptrtoint %407 : !llvm.ptr<i1> to i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.sub %404, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.urem %411, %404  : i64
    %413 = llvm.sub %411, %412  : i64
    %414 = llvm.inttoptr %413 : i64 to !llvm.ptr<i1>
    %415 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %416 = llvm.insertvalue %407, %415[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %414, %416[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.insertvalue %418, %417[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %393, %419[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %394, %420[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %395, %421[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %396, %422[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %399, %423[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %398, %424[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.insertvalue %396, %425[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.insertvalue %397, %426[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%428 : i64)
  ^bb73(%431: i64):  // 2 preds: ^bb72, ^bb83
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(4 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%433 : i64)
  ^bb75(%436: i64):  // 2 preds: ^bb74, ^bb82
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%438 : i64)
  ^bb77(%441: i64):  // 2 preds: ^bb76, ^bb81
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%443 : i64)
  ^bb79(%446: i64):  // 2 preds: ^bb78, ^bb80
    %447 = llvm.icmp "slt" %446, %444 : i64
    llvm.cond_br %447, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %448 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mul %431, %449  : i64
    %451 = llvm.mlir.constant(4 : index) : i64
    %452 = llvm.mul %13, %451  : i64
    %453 = llvm.add %450, %452  : i64
    %454 = llvm.mlir.constant(2 : index) : i64
    %455 = llvm.mul %441, %454  : i64
    %456 = llvm.add %453, %455  : i64
    %457 = llvm.add %456, %446  : i64
    %458 = llvm.getelementptr %448[%457] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %459 = llvm.load %458 : !llvm.ptr<i32>
    %460 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.mlir.constant(16 : index) : i64
    %462 = llvm.mul %431, %461  : i64
    %463 = llvm.mlir.constant(4 : index) : i64
    %464 = llvm.mul %436, %463  : i64
    %465 = llvm.add %462, %464  : i64
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.mul %441, %466  : i64
    %468 = llvm.add %465, %467  : i64
    %469 = llvm.add %468, %446  : i64
    %470 = llvm.getelementptr %460[%469] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %471 = llvm.load %470 : !llvm.ptr<i32>
    %472 = llvm.icmp "sgt" %459, %471 : i32
    %473 = llvm.extractvalue %427[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.mlir.constant(16 : index) : i64
    %475 = llvm.mul %431, %474  : i64
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mul %436, %476  : i64
    %478 = llvm.add %475, %477  : i64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mul %441, %479  : i64
    %481 = llvm.add %478, %480  : i64
    %482 = llvm.add %481, %446  : i64
    %483 = llvm.getelementptr %473[%482] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %472, %483 : !llvm.ptr<i1>
    %484 = llvm.add %446, %445  : i64
    llvm.br ^bb79(%484 : i64)
  ^bb81:  // pred: ^bb79
    %485 = llvm.add %441, %440  : i64
    llvm.br ^bb77(%485 : i64)
  ^bb82:  // pred: ^bb77
    %486 = llvm.add %436, %435  : i64
    llvm.br ^bb75(%486 : i64)
  ^bb83:  // pred: ^bb75
    %487 = llvm.add %431, %430  : i64
    llvm.br ^bb73(%487 : i64)
  ^bb84:  // pred: ^bb73
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(2 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mlir.constant(2 : index) : i64
    %494 = llvm.mlir.null : !llvm.ptr<i32>
    %495 = llvm.getelementptr %494[%493] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %496 = llvm.ptrtoint %495 : !llvm.ptr<i32> to i64
    %497 = llvm.mlir.constant(16 : index) : i64
    %498 = llvm.add %496, %497  : i64
    %499 = llvm.call @malloc(%498) : (i64) -> !llvm.ptr<i8>
    %500 = llvm.bitcast %499 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %501 = llvm.ptrtoint %500 : !llvm.ptr<i32> to i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.sub %497, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.urem %504, %497  : i64
    %506 = llvm.sub %504, %505  : i64
    %507 = llvm.inttoptr %506 : i64 to !llvm.ptr<i32>
    %508 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %509 = llvm.insertvalue %500, %508[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %510 = llvm.insertvalue %507, %509[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.insertvalue %511, %510[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %513 = llvm.insertvalue %488, %512[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %514 = llvm.insertvalue %489, %513[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.insertvalue %490, %514[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %516 = llvm.insertvalue %492, %515[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %517 = llvm.insertvalue %490, %516[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %518 = llvm.insertvalue %491, %517[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%519 : i64)
  ^bb85(%522: i64):  // 2 preds: ^bb84, ^bb92
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb86, ^bb93
  ^bb86:  // pred: ^bb85
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%524 : i64)
  ^bb87(%527: i64):  // 2 preds: ^bb86, ^bb91
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb88, ^bb92
  ^bb88:  // pred: ^bb87
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(2 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%529 : i64)
  ^bb89(%532: i64):  // 2 preds: ^bb88, ^bb90
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb90, ^bb91
  ^bb90:  // pred: ^bb89
    %534 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %535 = llvm.mlir.constant(2 : index) : i64
    %536 = llvm.mul %522, %535  : i64
    %537 = llvm.mlir.constant(2 : index) : i64
    %538 = llvm.mul %527, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.add %539, %532  : i64
    %541 = llvm.getelementptr %534[%540] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %541 : !llvm.ptr<i32>
    %542 = llvm.add %532, %531  : i64
    llvm.br ^bb89(%542 : i64)
  ^bb91:  // pred: ^bb89
    %543 = llvm.add %527, %526  : i64
    llvm.br ^bb87(%543 : i64)
  ^bb92:  // pred: ^bb87
    %544 = llvm.add %522, %521  : i64
    llvm.br ^bb85(%544 : i64)
  ^bb93:  // pred: ^bb85
    %545 = llvm.mlir.constant(0 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%545 : i64)
  ^bb94(%548: i64):  // 2 preds: ^bb93, ^bb104
    %549 = llvm.icmp "slt" %548, %546 : i64
    llvm.cond_br %549, ^bb95, ^bb105
  ^bb95:  // pred: ^bb94
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb96(%550 : i64)
  ^bb96(%553: i64):  // 2 preds: ^bb95, ^bb103
    %554 = llvm.icmp "slt" %553, %551 : i64
    llvm.cond_br %554, ^bb97, ^bb104
  ^bb97:  // pred: ^bb96
    %555 = llvm.mlir.constant(0 : index) : i64
    %556 = llvm.mlir.constant(2 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb98(%555 : i64)
  ^bb98(%558: i64):  // 2 preds: ^bb97, ^bb102
    %559 = llvm.icmp "slt" %558, %556 : i64
    llvm.cond_br %559, ^bb99, ^bb103
  ^bb99:  // pred: ^bb98
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.mlir.constant(2 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%560 : i64)
  ^bb100(%563: i64):  // 2 preds: ^bb99, ^bb101
    %564 = llvm.icmp "slt" %563, %561 : i64
    llvm.cond_br %564, ^bb101, ^bb102
  ^bb101:  // pred: ^bb100
    %565 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.mlir.constant(4 : index) : i64
    %567 = llvm.mul %548, %566  : i64
    %568 = llvm.mlir.constant(4 : index) : i64
    %569 = llvm.mul %553, %568  : i64
    %570 = llvm.add %567, %569  : i64
    %571 = llvm.mlir.constant(2 : index) : i64
    %572 = llvm.mul %558, %571  : i64
    %573 = llvm.add %570, %572  : i64
    %574 = llvm.add %573, %563  : i64
    %575 = llvm.getelementptr %565[%574] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %576 = llvm.load %575 : !llvm.ptr<i32>
    %577 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %578 = llvm.mlir.constant(2 : index) : i64
    %579 = llvm.mul %548, %578  : i64
    %580 = llvm.mlir.constant(2 : index) : i64
    %581 = llvm.mul %553, %580  : i64
    %582 = llvm.add %579, %581  : i64
    %583 = llvm.add %582, %563  : i64
    %584 = llvm.getelementptr %577[%583] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %585 = llvm.load %584 : !llvm.ptr<i32>
    %586 = llvm.icmp "slt" %585, %576 : i32
    %587 = llvm.select %586, %585, %576 : i1, i32
    %588 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %589 = llvm.mlir.constant(2 : index) : i64
    %590 = llvm.mul %548, %589  : i64
    %591 = llvm.mlir.constant(2 : index) : i64
    %592 = llvm.mul %553, %591  : i64
    %593 = llvm.add %590, %592  : i64
    %594 = llvm.add %593, %563  : i64
    %595 = llvm.getelementptr %588[%594] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %587, %595 : !llvm.ptr<i32>
    %596 = llvm.add %563, %562  : i64
    llvm.br ^bb100(%596 : i64)
  ^bb102:  // pred: ^bb100
    %597 = llvm.add %558, %557  : i64
    llvm.br ^bb98(%597 : i64)
  ^bb103:  // pred: ^bb98
    %598 = llvm.add %553, %552  : i64
    llvm.br ^bb96(%598 : i64)
  ^bb104:  // pred: ^bb96
    %599 = llvm.add %548, %547  : i64
    llvm.br ^bb94(%599 : i64)
  ^bb105:  // pred: ^bb94
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    %602 = llvm.mlir.constant(2 : index) : i64
    %603 = llvm.mlir.constant(2 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    %605 = llvm.mlir.constant(4 : index) : i64
    %606 = llvm.mlir.constant(4 : index) : i64
    %607 = llvm.mlir.constant(4 : index) : i64
    %608 = llvm.mlir.null : !llvm.ptr<i32>
    %609 = llvm.getelementptr %608[%607] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %610 = llvm.ptrtoint %609 : !llvm.ptr<i32> to i64
    %611 = llvm.mlir.constant(16 : index) : i64
    %612 = llvm.add %610, %611  : i64
    %613 = llvm.call @malloc(%612) : (i64) -> !llvm.ptr<i8>
    %614 = llvm.bitcast %613 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %615 = llvm.ptrtoint %614 : !llvm.ptr<i32> to i64
    %616 = llvm.mlir.constant(1 : index) : i64
    %617 = llvm.sub %611, %616  : i64
    %618 = llvm.add %615, %617  : i64
    %619 = llvm.urem %618, %611  : i64
    %620 = llvm.sub %618, %619  : i64
    %621 = llvm.inttoptr %620 : i64 to !llvm.ptr<i32>
    %622 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %623 = llvm.insertvalue %614, %622[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %624 = llvm.insertvalue %621, %623[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.mlir.constant(0 : index) : i64
    %626 = llvm.insertvalue %625, %624[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %627 = llvm.insertvalue %600, %626[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.insertvalue %601, %627[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.insertvalue %602, %628[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.insertvalue %603, %629[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.insertvalue %606, %630[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.insertvalue %605, %631[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.insertvalue %603, %632[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.insertvalue %604, %633[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %635 = llvm.mlir.constant(0 : index) : i64
    %636 = llvm.mlir.constant(1 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%635 : i64)
  ^bb106(%638: i64):  // 2 preds: ^bb105, ^bb116
    %639 = llvm.icmp "slt" %638, %636 : i64
    llvm.cond_br %639, ^bb107, ^bb117
  ^bb107:  // pred: ^bb106
    %640 = llvm.mlir.constant(0 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb108(%640 : i64)
  ^bb108(%643: i64):  // 2 preds: ^bb107, ^bb115
    %644 = llvm.icmp "slt" %643, %641 : i64
    llvm.cond_br %644, ^bb109, ^bb116
  ^bb109:  // pred: ^bb108
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(2 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb110(%645 : i64)
  ^bb110(%648: i64):  // 2 preds: ^bb109, ^bb114
    %649 = llvm.icmp "slt" %648, %646 : i64
    llvm.cond_br %649, ^bb111, ^bb115
  ^bb111:  // pred: ^bb110
    %650 = llvm.mlir.constant(0 : index) : i64
    %651 = llvm.mlir.constant(2 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%650 : i64)
  ^bb112(%653: i64):  // 2 preds: ^bb111, ^bb113
    %654 = llvm.icmp "slt" %653, %651 : i64
    llvm.cond_br %654, ^bb113, ^bb114
  ^bb113:  // pred: ^bb112
    %655 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %656 = llvm.mlir.constant(4 : index) : i64
    %657 = llvm.mul %638, %656  : i64
    %658 = llvm.mlir.constant(4 : index) : i64
    %659 = llvm.mul %643, %658  : i64
    %660 = llvm.add %657, %659  : i64
    %661 = llvm.mlir.constant(2 : index) : i64
    %662 = llvm.mul %648, %661  : i64
    %663 = llvm.add %660, %662  : i64
    %664 = llvm.add %663, %653  : i64
    %665 = llvm.getelementptr %655[%664] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %666 = llvm.load %665 : !llvm.ptr<i32>
    %667 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %668 = llvm.mlir.constant(2 : index) : i64
    %669 = llvm.mul %643, %668  : i64
    %670 = llvm.mlir.constant(2 : index) : i64
    %671 = llvm.mul %13, %670  : i64
    %672 = llvm.add %669, %671  : i64
    %673 = llvm.add %672, %653  : i64
    %674 = llvm.getelementptr %667[%673] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %675 = llvm.load %674 : !llvm.ptr<i32>
    %676 = llvm.mul %666, %675  : i32
    %677 = llvm.extractvalue %634[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.mlir.constant(4 : index) : i64
    %679 = llvm.mul %638, %678  : i64
    %680 = llvm.mlir.constant(4 : index) : i64
    %681 = llvm.mul %643, %680  : i64
    %682 = llvm.add %679, %681  : i64
    %683 = llvm.mlir.constant(2 : index) : i64
    %684 = llvm.mul %648, %683  : i64
    %685 = llvm.add %682, %684  : i64
    %686 = llvm.add %685, %653  : i64
    %687 = llvm.getelementptr %677[%686] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %676, %687 : !llvm.ptr<i32>
    %688 = llvm.add %653, %652  : i64
    llvm.br ^bb112(%688 : i64)
  ^bb114:  // pred: ^bb112
    %689 = llvm.add %648, %647  : i64
    llvm.br ^bb110(%689 : i64)
  ^bb115:  // pred: ^bb110
    %690 = llvm.add %643, %642  : i64
    llvm.br ^bb108(%690 : i64)
  ^bb116:  // pred: ^bb108
    %691 = llvm.add %638, %637  : i64
    llvm.br ^bb106(%691 : i64)
  ^bb117:  // pred: ^bb106
    %692 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %693 = llvm.insertvalue %427, %692[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %694 = llvm.insertvalue %634, %693[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %694 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v0_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

