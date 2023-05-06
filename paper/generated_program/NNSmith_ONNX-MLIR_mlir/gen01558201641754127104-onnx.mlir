module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<-4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(-2147483648 : i32) : i32
    %13 = llvm.mlir.constant(0 : i64) : i64
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.null : !llvm.ptr<i64>
    %43 = llvm.getelementptr %42[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %44 = llvm.ptrtoint %43 : !llvm.ptr<i64> to i64
    %45 = llvm.mlir.constant(16 : index) : i64
    %46 = llvm.add %44, %45  : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %49 = llvm.ptrtoint %48 : !llvm.ptr<i64> to i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.sub %45, %50  : i64
    %52 = llvm.add %49, %51  : i64
    %53 = llvm.urem %52, %45  : i64
    %54 = llvm.sub %52, %53  : i64
    %55 = llvm.inttoptr %54 : i64 to !llvm.ptr<i64>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %57 = llvm.insertvalue %48, %56[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %37, %60[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %38, %61[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %39, %62[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %40, %63[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %38, %64[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %39, %65[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %40, %66[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %41, %67[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%69 : i64)
  ^bb1(%72: i64):  // 2 preds: ^bb0, ^bb11
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%74 : i64)
  ^bb3(%77: i64):  // 2 preds: ^bb2, ^bb10
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%79 : i64)
  ^bb5(%82: i64):  // 2 preds: ^bb4, ^bb9
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%84 : i64)
  ^bb7(%87: i64):  // 2 preds: ^bb6, ^bb8
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %89 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.add %72, %77  : i64
    %91 = llvm.add %90, %82  : i64
    %92 = llvm.add %91, %87  : i64
    %93 = llvm.getelementptr %89[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %94 = llvm.load %93 : !llvm.ptr<i32>
    %95 = llvm.sext %94 : i32 to i64
    %96 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.add %72, %77  : i64
    %98 = llvm.add %97, %82  : i64
    %99 = llvm.add %98, %87  : i64
    %100 = llvm.getelementptr %96[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %100 : !llvm.ptr<i64>
    %101 = llvm.add %87, %86  : i64
    llvm.br ^bb7(%101 : i64)
  ^bb9:  // pred: ^bb7
    %102 = llvm.add %82, %81  : i64
    llvm.br ^bb5(%102 : i64)
  ^bb10:  // pred: ^bb5
    %103 = llvm.add %77, %76  : i64
    llvm.br ^bb3(%103 : i64)
  ^bb11:  // pred: ^bb3
    %104 = llvm.add %72, %71  : i64
    llvm.br ^bb1(%104 : i64)
  ^bb12:  // pred: ^bb1
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.null : !llvm.ptr<i64>
    %110 = llvm.getelementptr %109[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %111 = llvm.ptrtoint %110 : !llvm.ptr<i64> to i64
    %112 = llvm.mlir.constant(16 : index) : i64
    %113 = llvm.add %111, %112  : i64
    %114 = llvm.call @malloc(%113) : (i64) -> !llvm.ptr<i8>
    %115 = llvm.bitcast %114 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %116 = llvm.ptrtoint %115 : !llvm.ptr<i64> to i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.sub %112, %117  : i64
    %119 = llvm.add %116, %118  : i64
    %120 = llvm.urem %119, %112  : i64
    %121 = llvm.sub %119, %120  : i64
    %122 = llvm.inttoptr %121 : i64 to !llvm.ptr<i64>
    %123 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %124 = llvm.insertvalue %115, %123[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.insertvalue %122, %124[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.insertvalue %126, %125[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.insertvalue %105, %127[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.insertvalue %106, %128[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.insertvalue %107, %129[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.insertvalue %106, %130[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %132 = llvm.insertvalue %107, %131[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.insertvalue %108, %132[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%134 : i64)
  ^bb13(%137: i64):  // 2 preds: ^bb12, ^bb20
    %138 = llvm.icmp "slt" %137, %135 : i64
    llvm.cond_br %138, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%139 : i64)
  ^bb15(%142: i64):  // 2 preds: ^bb14, ^bb19
    %143 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %143, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%144 : i64)
  ^bb17(%147: i64):  // 2 preds: ^bb16, ^bb18
    %148 = llvm.icmp "slt" %147, %145 : i64
    llvm.cond_br %148, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %149 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.add %137, %142  : i64
    %151 = llvm.add %150, %147  : i64
    %152 = llvm.getelementptr %149[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %152 : !llvm.ptr<i64>
    %153 = llvm.add %147, %146  : i64
    llvm.br ^bb17(%153 : i64)
  ^bb19:  // pred: ^bb17
    %154 = llvm.add %142, %141  : i64
    llvm.br ^bb15(%154 : i64)
  ^bb20:  // pred: ^bb15
    %155 = llvm.add %137, %136  : i64
    llvm.br ^bb13(%155 : i64)
  ^bb21:  // pred: ^bb13
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%156 : i64)
  ^bb22(%159: i64):  // 2 preds: ^bb21, ^bb32
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%161 : i64)
  ^bb24(%164: i64):  // 2 preds: ^bb23, ^bb31
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%166 : i64)
  ^bb26(%169: i64):  // 2 preds: ^bb25, ^bb30
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%171 : i64)
  ^bb28(%174: i64):  // 2 preds: ^bb27, ^bb29
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %176 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.add %159, %164  : i64
    %178 = llvm.add %177, %169  : i64
    %179 = llvm.add %178, %174  : i64
    %180 = llvm.getelementptr %176[%179] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %181 = llvm.load %180 : !llvm.ptr<i64>
    %182 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %183 = llvm.add %159, %169  : i64
    %184 = llvm.add %183, %174  : i64
    %185 = llvm.getelementptr %182[%184] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %186 = llvm.load %185 : !llvm.ptr<i64>
    %187 = llvm.add %186, %181  : i64
    %188 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %189 = llvm.add %159, %169  : i64
    %190 = llvm.add %189, %174  : i64
    %191 = llvm.getelementptr %188[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %187, %191 : !llvm.ptr<i64>
    %192 = llvm.add %174, %173  : i64
    llvm.br ^bb28(%192 : i64)
  ^bb30:  // pred: ^bb28
    %193 = llvm.add %169, %168  : i64
    llvm.br ^bb26(%193 : i64)
  ^bb31:  // pred: ^bb26
    %194 = llvm.add %164, %163  : i64
    llvm.br ^bb24(%194 : i64)
  ^bb32:  // pred: ^bb24
    %195 = llvm.add %159, %158  : i64
    llvm.br ^bb22(%195 : i64)
  ^bb33:  // pred: ^bb22
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.null : !llvm.ptr<i64>
    %201 = llvm.getelementptr %200[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %202 = llvm.ptrtoint %201 : !llvm.ptr<i64> to i64
    %203 = llvm.mlir.constant(16 : index) : i64
    %204 = llvm.add %202, %203  : i64
    %205 = llvm.call @malloc(%204) : (i64) -> !llvm.ptr<i8>
    %206 = llvm.bitcast %205 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %207 = llvm.ptrtoint %206 : !llvm.ptr<i64> to i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.sub %203, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.urem %210, %203  : i64
    %212 = llvm.sub %210, %211  : i64
    %213 = llvm.inttoptr %212 : i64 to !llvm.ptr<i64>
    %214 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %215 = llvm.insertvalue %206, %214[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %216 = llvm.insertvalue %213, %215[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.insertvalue %217, %216[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %219 = llvm.insertvalue %196, %218[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.insertvalue %197, %219[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %221 = llvm.insertvalue %198, %220[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %222 = llvm.insertvalue %197, %221[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.insertvalue %198, %222[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %224 = llvm.insertvalue %199, %223[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.null : !llvm.ptr<i64>
    %227 = llvm.getelementptr %226[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %228 = llvm.ptrtoint %227 : !llvm.ptr<i64> to i64
    %229 = llvm.alloca %228 x i64 : (i64) -> !llvm.ptr<i64>
    %230 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %231 = llvm.insertvalue %229, %230[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %232 = llvm.insertvalue %229, %231[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%235 : i64)
  ^bb34(%238: i64):  // 2 preds: ^bb33, ^bb44
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%240 : i64)
  ^bb36(%243: i64):  // 2 preds: ^bb35, ^bb43
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%245 : i64)
  ^bb38(%248: i64):  // 2 preds: ^bb37, ^bb42
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %250 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %13, %250 : !llvm.ptr<i64>
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%251 : i64)
  ^bb40(%254: i64):  // 2 preds: ^bb39, ^bb41
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %256 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %257 = llvm.add %238, %243  : i64
    %258 = llvm.add %257, %254  : i64
    %259 = llvm.getelementptr %256[%258] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %260 = llvm.load %259 : !llvm.ptr<i64>
    %261 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %262 = llvm.add %238, %254  : i64
    %263 = llvm.add %262, %248  : i64
    %264 = llvm.getelementptr %261[%263] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %265 = llvm.load %264 : !llvm.ptr<i64>
    %266 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %267 = llvm.load %266 : !llvm.ptr<i64>
    %268 = llvm.mul %260, %265  : i64
    %269 = llvm.add %267, %268  : i64
    %270 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %269, %270 : !llvm.ptr<i64>
    %271 = llvm.add %254, %253  : i64
    llvm.br ^bb40(%271 : i64)
  ^bb42:  // pred: ^bb40
    %272 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %273 = llvm.load %272 : !llvm.ptr<i64>
    %274 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %275 = llvm.add %238, %243  : i64
    %276 = llvm.add %275, %248  : i64
    %277 = llvm.getelementptr %274[%276] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %273, %277 : !llvm.ptr<i64>
    %278 = llvm.add %248, %247  : i64
    llvm.br ^bb38(%278 : i64)
  ^bb43:  // pred: ^bb38
    %279 = llvm.add %243, %242  : i64
    llvm.br ^bb36(%279 : i64)
  ^bb44:  // pred: ^bb36
    %280 = llvm.add %238, %237  : i64
    llvm.br ^bb34(%280 : i64)
  ^bb45:  // pred: ^bb34
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.null : !llvm.ptr<i32>
    %288 = llvm.getelementptr %287[%286] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %289 = llvm.ptrtoint %288 : !llvm.ptr<i32> to i64
    %290 = llvm.mlir.constant(16 : index) : i64
    %291 = llvm.add %289, %290  : i64
    %292 = llvm.call @malloc(%291) : (i64) -> !llvm.ptr<i8>
    %293 = llvm.bitcast %292 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<i32> to i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.sub %290, %295  : i64
    %297 = llvm.add %294, %296  : i64
    %298 = llvm.urem %297, %290  : i64
    %299 = llvm.sub %297, %298  : i64
    %300 = llvm.inttoptr %299 : i64 to !llvm.ptr<i32>
    %301 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %302 = llvm.insertvalue %293, %301[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %300, %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.insertvalue %304, %303[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %281, %305[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %282, %306[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %283, %307[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %284, %308[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %282, %309[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %283, %310[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %284, %311[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %285, %312[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%314 : i64)
  ^bb46(%317: i64):  // 2 preds: ^bb45, ^bb56
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%319 : i64)
  ^bb48(%322: i64):  // 2 preds: ^bb47, ^bb55
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%324 : i64)
  ^bb50(%327: i64):  // 2 preds: ^bb49, ^bb54
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%329 : i64)
  ^bb52(%332: i64):  // 2 preds: ^bb51, ^bb53
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %334 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.add %317, %322  : i64
    %336 = llvm.add %335, %327  : i64
    %337 = llvm.add %336, %332  : i64
    %338 = llvm.getelementptr %334[%337] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %339 = llvm.load %338 : !llvm.ptr<i32>
    %340 = llvm.extractvalue %313[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.mlir.constant(2 : index) : i64
    %342 = llvm.mul %317, %341  : i64
    %343 = llvm.add %342, %322  : i64
    %344 = llvm.add %343, %327  : i64
    %345 = llvm.add %344, %332  : i64
    %346 = llvm.getelementptr %340[%345] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %339, %346 : !llvm.ptr<i32>
    %347 = llvm.add %332, %331  : i64
    llvm.br ^bb52(%347 : i64)
  ^bb54:  // pred: ^bb52
    %348 = llvm.add %327, %326  : i64
    llvm.br ^bb50(%348 : i64)
  ^bb55:  // pred: ^bb50
    %349 = llvm.add %322, %321  : i64
    llvm.br ^bb48(%349 : i64)
  ^bb56:  // pred: ^bb48
    %350 = llvm.add %317, %316  : i64
    llvm.br ^bb46(%350 : i64)
  ^bb57:  // pred: ^bb46
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%351 : i64)
  ^bb58(%354: i64):  // 2 preds: ^bb57, ^bb68
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%356 : i64)
  ^bb60(%359: i64):  // 2 preds: ^bb59, ^bb67
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%361 : i64)
  ^bb62(%364: i64):  // 2 preds: ^bb61, ^bb66
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%366 : i64)
  ^bb64(%369: i64):  // 2 preds: ^bb63, ^bb65
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.add %359, %371  : i64
    %373 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.add %354, %359  : i64
    %375 = llvm.add %374, %364  : i64
    %376 = llvm.add %375, %369  : i64
    %377 = llvm.getelementptr %373[%376] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %378 = llvm.load %377 : !llvm.ptr<i32>
    %379 = llvm.extractvalue %313[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mul %354, %380  : i64
    %382 = llvm.add %381, %372  : i64
    %383 = llvm.add %382, %364  : i64
    %384 = llvm.add %383, %369  : i64
    %385 = llvm.getelementptr %379[%384] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %378, %385 : !llvm.ptr<i32>
    %386 = llvm.add %369, %368  : i64
    llvm.br ^bb64(%386 : i64)
  ^bb66:  // pred: ^bb64
    %387 = llvm.add %364, %363  : i64
    llvm.br ^bb62(%387 : i64)
  ^bb67:  // pred: ^bb62
    %388 = llvm.add %359, %358  : i64
    llvm.br ^bb60(%388 : i64)
  ^bb68:  // pred: ^bb60
    %389 = llvm.add %354, %353  : i64
    llvm.br ^bb58(%389 : i64)
  ^bb69:  // pred: ^bb58
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.null : !llvm.ptr<i32>
    %395 = llvm.getelementptr %394[%390] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %396 = llvm.ptrtoint %395 : !llvm.ptr<i32> to i64
    %397 = llvm.mlir.constant(16 : index) : i64
    %398 = llvm.add %396, %397  : i64
    %399 = llvm.call @malloc(%398) : (i64) -> !llvm.ptr<i8>
    %400 = llvm.bitcast %399 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %401 = llvm.ptrtoint %400 : !llvm.ptr<i32> to i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.sub %397, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.urem %404, %397  : i64
    %406 = llvm.sub %404, %405  : i64
    %407 = llvm.inttoptr %406 : i64 to !llvm.ptr<i32>
    %408 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %409 = llvm.insertvalue %400, %408[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %410 = llvm.insertvalue %407, %409[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.insertvalue %411, %410[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %413 = llvm.insertvalue %390, %412[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %414 = llvm.insertvalue %391, %413[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %415 = llvm.insertvalue %392, %414[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %416 = llvm.insertvalue %391, %415[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %417 = llvm.insertvalue %392, %416[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %418 = llvm.insertvalue %393, %417[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%419 : i64)
  ^bb70(%422: i64):  // 2 preds: ^bb69, ^bb77
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%424 : i64)
  ^bb72(%427: i64):  // 2 preds: ^bb71, ^bb76
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%429 : i64)
  ^bb74(%432: i64):  // 2 preds: ^bb73, ^bb75
    %433 = llvm.icmp "slt" %432, %430 : i64
    llvm.cond_br %433, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %434 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %435 = llvm.add %422, %427  : i64
    %436 = llvm.add %435, %432  : i64
    %437 = llvm.getelementptr %434[%436] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %437 : !llvm.ptr<i32>
    %438 = llvm.add %432, %431  : i64
    llvm.br ^bb74(%438 : i64)
  ^bb76:  // pred: ^bb74
    %439 = llvm.add %427, %426  : i64
    llvm.br ^bb72(%439 : i64)
  ^bb77:  // pred: ^bb72
    %440 = llvm.add %422, %421  : i64
    llvm.br ^bb70(%440 : i64)
  ^bb78:  // pred: ^bb70
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%441 : i64)
  ^bb79(%444: i64):  // 2 preds: ^bb78, ^bb89
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%446 : i64)
  ^bb81(%449: i64):  // 2 preds: ^bb80, ^bb88
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%451 : i64)
  ^bb83(%454: i64):  // 2 preds: ^bb82, ^bb87
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%456 : i64)
  ^bb85(%459: i64):  // 2 preds: ^bb84, ^bb86
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %461 = llvm.extractvalue %313[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mul %444, %462  : i64
    %464 = llvm.add %463, %449  : i64
    %465 = llvm.add %464, %454  : i64
    %466 = llvm.add %465, %459  : i64
    %467 = llvm.getelementptr %461[%466] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %468 = llvm.load %467 : !llvm.ptr<i32>
    %469 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %470 = llvm.add %449, %454  : i64
    %471 = llvm.add %470, %459  : i64
    %472 = llvm.getelementptr %469[%471] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %473 = llvm.load %472 : !llvm.ptr<i32>
    %474 = llvm.icmp "sgt" %473, %468 : i32
    %475 = llvm.select %474, %473, %468 : i1, i32
    %476 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %477 = llvm.add %449, %454  : i64
    %478 = llvm.add %477, %459  : i64
    %479 = llvm.getelementptr %476[%478] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %475, %479 : !llvm.ptr<i32>
    %480 = llvm.add %459, %458  : i64
    llvm.br ^bb85(%480 : i64)
  ^bb87:  // pred: ^bb85
    %481 = llvm.add %454, %453  : i64
    llvm.br ^bb83(%481 : i64)
  ^bb88:  // pred: ^bb83
    %482 = llvm.add %449, %448  : i64
    llvm.br ^bb81(%482 : i64)
  ^bb89:  // pred: ^bb81
    %483 = llvm.add %444, %443  : i64
    llvm.br ^bb79(%483 : i64)
  ^bb90:  // pred: ^bb79
    %484 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %485 = llvm.insertvalue %224, %484[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %486 = llvm.insertvalue %418, %485[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %486 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.getelementptr %50[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %105 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

