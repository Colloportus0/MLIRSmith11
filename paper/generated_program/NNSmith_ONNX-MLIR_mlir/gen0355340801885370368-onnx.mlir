module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v3_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(-1 : i64) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.null : !llvm.ptr<i32>
    %20 = llvm.getelementptr %19[%14] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %21 = llvm.ptrtoint %20 : !llvm.ptr<i32> to i64
    %22 = llvm.mlir.constant(16 : index) : i64
    %23 = llvm.add %21, %22  : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr<i8>
    %25 = llvm.bitcast %24 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %26 = llvm.ptrtoint %25 : !llvm.ptr<i32> to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %22, %27  : i64
    %29 = llvm.add %26, %28  : i64
    %30 = llvm.urem %29, %22  : i64
    %31 = llvm.sub %29, %30  : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr<i32>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %14, %37[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %15, %38[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %16, %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %15, %41[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %16, %42[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %18, %44[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%46 : i64)
  ^bb1(%49: i64):  // 2 preds: ^bb0, ^bb11
    %50 = llvm.icmp "slt" %49, %47 : i64
    llvm.cond_br %50, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%51 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb10
    %55 = llvm.icmp "slt" %54, %52 : i64
    llvm.cond_br %55, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%56 : i64)
  ^bb5(%59: i64):  // 2 preds: ^bb4, ^bb9
    %60 = llvm.icmp "slt" %59, %57 : i64
    llvm.cond_br %60, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%61 : i64)
  ^bb7(%64: i64):  // 2 preds: ^bb6, ^bb8
    %65 = llvm.icmp "slt" %64, %62 : i64
    llvm.cond_br %65, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %66 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.add %49, %54  : i64
    %68 = llvm.add %67, %59  : i64
    %69 = llvm.add %68, %64  : i64
    %70 = llvm.getelementptr %66[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %71 = llvm.load %70 : !llvm.ptr<i32>
    %72 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.add %49, %54  : i64
    %74 = llvm.add %73, %59  : i64
    %75 = llvm.add %74, %64  : i64
    %76 = llvm.getelementptr %72[%75] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %77 = llvm.load %76 : !llvm.ptr<i32>
    %78 = llvm.sub %71, %77  : i32
    %79 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.add %49, %54  : i64
    %81 = llvm.add %80, %59  : i64
    %82 = llvm.add %81, %64  : i64
    %83 = llvm.getelementptr %79[%82] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %78, %83 : !llvm.ptr<i32>
    %84 = llvm.add %64, %63  : i64
    llvm.br ^bb7(%84 : i64)
  ^bb9:  // pred: ^bb7
    %85 = llvm.add %59, %58  : i64
    llvm.br ^bb5(%85 : i64)
  ^bb10:  // pred: ^bb5
    %86 = llvm.add %54, %53  : i64
    llvm.br ^bb3(%86 : i64)
  ^bb11:  // pred: ^bb3
    %87 = llvm.add %49, %48  : i64
    llvm.br ^bb1(%87 : i64)
  ^bb12:  // pred: ^bb1
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.null : !llvm.ptr<i32>
    %94 = llvm.getelementptr %93[%88] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<i32> to i64
    %96 = llvm.mlir.constant(16 : index) : i64
    %97 = llvm.add %95, %96  : i64
    %98 = llvm.call @malloc(%97) : (i64) -> !llvm.ptr<i8>
    %99 = llvm.bitcast %98 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %100 = llvm.ptrtoint %99 : !llvm.ptr<i32> to i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.sub %96, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.urem %103, %96  : i64
    %105 = llvm.sub %103, %104  : i64
    %106 = llvm.inttoptr %105 : i64 to !llvm.ptr<i32>
    %107 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %108 = llvm.insertvalue %99, %107[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %106, %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.insertvalue %110, %109[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %88, %111[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %89, %112[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %90, %113[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %91, %114[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %89, %115[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %90, %116[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %91, %117[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %92, %118[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%120 : i64)
  ^bb13(%123: i64):  // 2 preds: ^bb12, ^bb23
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%125 : i64)
  ^bb15(%128: i64):  // 2 preds: ^bb14, ^bb22
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%130 : i64)
  ^bb17(%133: i64):  // 2 preds: ^bb16, ^bb21
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%135 : i64)
  ^bb19(%138: i64):  // 2 preds: ^bb18, ^bb20
    %139 = llvm.icmp "slt" %138, %136 : i64
    llvm.cond_br %139, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %140 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.add %123, %128  : i64
    %142 = llvm.add %141, %133  : i64
    %143 = llvm.add %142, %138  : i64
    %144 = llvm.getelementptr %140[%143] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %145 = llvm.load %144 : !llvm.ptr<i32>
    %146 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.add %123, %128  : i64
    %148 = llvm.add %147, %133  : i64
    %149 = llvm.add %148, %138  : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.load %150 : !llvm.ptr<i32>
    %152 = llvm.add %145, %151  : i32
    %153 = llvm.extractvalue %119[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.add %123, %128  : i64
    %155 = llvm.add %154, %133  : i64
    %156 = llvm.add %155, %138  : i64
    %157 = llvm.getelementptr %153[%156] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %152, %157 : !llvm.ptr<i32>
    %158 = llvm.add %138, %137  : i64
    llvm.br ^bb19(%158 : i64)
  ^bb21:  // pred: ^bb19
    %159 = llvm.add %133, %132  : i64
    llvm.br ^bb17(%159 : i64)
  ^bb22:  // pred: ^bb17
    %160 = llvm.add %128, %127  : i64
    llvm.br ^bb15(%160 : i64)
  ^bb23:  // pred: ^bb15
    %161 = llvm.add %123, %122  : i64
    llvm.br ^bb13(%161 : i64)
  ^bb24:  // pred: ^bb13
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.null : !llvm.ptr<i64>
    %167 = llvm.getelementptr %166[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %168 = llvm.ptrtoint %167 : !llvm.ptr<i64> to i64
    %169 = llvm.mlir.constant(16 : index) : i64
    %170 = llvm.add %168, %169  : i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr<i8>
    %172 = llvm.bitcast %171 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %173 = llvm.ptrtoint %172 : !llvm.ptr<i64> to i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.sub %169, %174  : i64
    %176 = llvm.add %173, %175  : i64
    %177 = llvm.urem %176, %169  : i64
    %178 = llvm.sub %176, %177  : i64
    %179 = llvm.inttoptr %178 : i64 to !llvm.ptr<i64>
    %180 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %181 = llvm.insertvalue %172, %180[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %182 = llvm.insertvalue %179, %181[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %185 = llvm.insertvalue %162, %184[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %186 = llvm.insertvalue %163, %185[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %187 = llvm.insertvalue %164, %186[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %188 = llvm.insertvalue %163, %187[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %189 = llvm.insertvalue %164, %188[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %190 = llvm.insertvalue %165, %189[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%191 : i64)
  ^bb25(%194: i64):  // 2 preds: ^bb24, ^bb32
    %195 = llvm.icmp "slt" %194, %192 : i64
    llvm.cond_br %195, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%196 : i64)
  ^bb27(%199: i64):  // 2 preds: ^bb26, ^bb31
    %200 = llvm.icmp "slt" %199, %197 : i64
    llvm.cond_br %200, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%201 : i64)
  ^bb29(%204: i64):  // 2 preds: ^bb28, ^bb30
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %206 = llvm.extractvalue %190[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %207 = llvm.add %194, %199  : i64
    %208 = llvm.add %207, %204  : i64
    %209 = llvm.getelementptr %206[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %209 : !llvm.ptr<i64>
    %210 = llvm.add %204, %203  : i64
    llvm.br ^bb29(%210 : i64)
  ^bb31:  // pred: ^bb29
    %211 = llvm.add %199, %198  : i64
    llvm.br ^bb27(%211 : i64)
  ^bb32:  // pred: ^bb27
    %212 = llvm.add %194, %193  : i64
    llvm.br ^bb25(%212 : i64)
  ^bb33:  // pred: ^bb25
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%213 : i64)
  ^bb34(%216: i64):  // 2 preds: ^bb33, ^bb44
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%218 : i64)
  ^bb36(%221: i64):  // 2 preds: ^bb35, ^bb43
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%223 : i64)
  ^bb38(%226: i64):  // 2 preds: ^bb37, ^bb42
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%228 : i64)
  ^bb40(%231: i64):  // 2 preds: ^bb39, ^bb41
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %233 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.add %216, %221  : i64
    %235 = llvm.add %234, %226  : i64
    %236 = llvm.add %235, %231  : i64
    %237 = llvm.getelementptr %233[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.load %237 : !llvm.ptr<i32>
    %239 = llvm.extractvalue %190[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %240 = llvm.add %216, %221  : i64
    %241 = llvm.add %240, %226  : i64
    %242 = llvm.getelementptr %239[%241] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %243 = llvm.load %242 : !llvm.ptr<i64>
    %244 = llvm.icmp "slt" %243, %12 : i64
    %245 = llvm.select %244, %12, %243 : i1, i64
    %246 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.add %216, %221  : i64
    %248 = llvm.add %247, %226  : i64
    %249 = llvm.add %248, %245  : i64
    %250 = llvm.getelementptr %246[%249] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %251 = llvm.load %250 : !llvm.ptr<i32>
    %252 = llvm.icmp "slt" %238, %251 : i32
    %253 = llvm.select %252, %231, %245 : i1, i64
    %254 = llvm.extractvalue %190[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %255 = llvm.add %216, %221  : i64
    %256 = llvm.add %255, %226  : i64
    %257 = llvm.getelementptr %254[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %253, %257 : !llvm.ptr<i64>
    %258 = llvm.add %231, %230  : i64
    llvm.br ^bb40(%258 : i64)
  ^bb42:  // pred: ^bb40
    %259 = llvm.add %226, %225  : i64
    llvm.br ^bb38(%259 : i64)
  ^bb43:  // pred: ^bb38
    %260 = llvm.add %221, %220  : i64
    llvm.br ^bb36(%260 : i64)
  ^bb44:  // pred: ^bb36
    %261 = llvm.add %216, %215  : i64
    llvm.br ^bb34(%261 : i64)
  ^bb45:  // pred: ^bb34
    %262 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %263 = llvm.extractvalue %190[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %264 = llvm.extractvalue %190[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %265 = llvm.insertvalue %263, %262[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %266 = llvm.insertvalue %264, %265[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.insertvalue %267, %266[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.insertvalue %269, %268[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.insertvalue %271, %270[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.insertvalue %273, %272[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.insertvalue %275, %274[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.null : !llvm.ptr<i1>
    %282 = llvm.getelementptr %281[%277] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %283 = llvm.ptrtoint %282 : !llvm.ptr<i1> to i64
    %284 = llvm.mlir.constant(16 : index) : i64
    %285 = llvm.add %283, %284  : i64
    %286 = llvm.call @malloc(%285) : (i64) -> !llvm.ptr<i8>
    %287 = llvm.bitcast %286 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i1> to i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.sub %284, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.urem %291, %284  : i64
    %293 = llvm.sub %291, %292  : i64
    %294 = llvm.inttoptr %293 : i64 to !llvm.ptr<i1>
    %295 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %296 = llvm.insertvalue %287, %295[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %297 = llvm.insertvalue %294, %296[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.insertvalue %298, %297[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %300 = llvm.insertvalue %277, %299[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %301 = llvm.insertvalue %278, %300[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %302 = llvm.insertvalue %279, %301[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %303 = llvm.insertvalue %278, %302[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %304 = llvm.insertvalue %279, %303[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %305 = llvm.insertvalue %280, %304[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%306 : i64)
  ^bb46(%309: i64):  // 2 preds: ^bb45, ^bb53
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%311 : i64)
  ^bb48(%314: i64):  // 2 preds: ^bb47, ^bb52
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%316 : i64)
  ^bb50(%319: i64):  // 2 preds: ^bb49, ^bb51
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %321 = llvm.extractvalue %190[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %322 = llvm.add %309, %314  : i64
    %323 = llvm.add %322, %319  : i64
    %324 = llvm.getelementptr %321[%323] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %325 = llvm.load %324 : !llvm.ptr<i64>
    %326 = llvm.icmp "ne" %325, %12 : i64
    %327 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %328 = llvm.add %309, %314  : i64
    %329 = llvm.add %328, %319  : i64
    %330 = llvm.getelementptr %327[%329] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %326, %330 : !llvm.ptr<i1>
    %331 = llvm.add %319, %318  : i64
    llvm.br ^bb50(%331 : i64)
  ^bb52:  // pred: ^bb50
    %332 = llvm.add %314, %313  : i64
    llvm.br ^bb48(%332 : i64)
  ^bb53:  // pred: ^bb48
    %333 = llvm.add %309, %308  : i64
    llvm.br ^bb46(%333 : i64)
  ^bb54:  // pred: ^bb46
    %334 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
    %335 = llvm.insertvalue %45, %334[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %336 = llvm.insertvalue %119, %335[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %337 = llvm.insertvalue %276, %336[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %338 = llvm.insertvalue %305, %337[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %338 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v3_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %48 = llvm.extractvalue %44[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.mlir.constant(32 : i64) : i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %53 = llvm.mlir.constant(4 : i64) : i64
    %54 = llvm.call @omTensorCreateUntyped(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.mlir.constant(1 : i64) : i64
    %56 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %58 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.bitcast %58 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%54, %55, %57, %59) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %60 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%54, %60) : (!llvm.ptr<i8>, i64) -> ()
    %61 = llvm.call @omTensorGetShape(%54) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.call @omTensorGetStrides(%54) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.mlir.constant(0 : i64) : i64
    %64 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %61[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %62[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.mlir.constant(1 : i64) : i64
    %69 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %61[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %62[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(2 : i64) : i64
    %74 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %61[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %62[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %61[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(0 : i64) : i64
    %84 = llvm.getelementptr %52[%83] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %54, %84 : !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(4 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %93[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %94[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(3 : i64) : i64
    %111 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %93[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %94[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(1 : i64) : i64
    %116 = llvm.getelementptr %52[%115] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %116 : !llvm.ptr<ptr<i8>>
    %117 = llvm.mlir.constant(2 : i64) : i64
    %118 = llvm.call @omTensorCreateUntyped(%117) : (i64) -> !llvm.ptr<i8>
    %119 = llvm.mlir.constant(1 : i64) : i64
    %120 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.bitcast %120 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %122 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%118, %119, %121, %123) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %124 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%118, %124) : (!llvm.ptr<i8>, i64) -> ()
    %125 = llvm.call @omTensorGetShape(%118) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.call @omTensorGetStrides(%118) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %127 = llvm.mlir.constant(0 : i64) : i64
    %128 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.getelementptr %125[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.getelementptr %126[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(1 : i64) : i64
    %133 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.getelementptr %125[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.getelementptr %126[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(2 : i64) : i64
    %138 = llvm.getelementptr %52[%137] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %118, %138 : !llvm.ptr<ptr<i8>>
    %139 = llvm.mlir.constant(3 : i64) : i64
    %140 = llvm.call @omTensorCreateUntyped(%139) : (i64) -> !llvm.ptr<i8>
    %141 = llvm.mlir.constant(1 : i64) : i64
    %142 = llvm.extractvalue %48[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.bitcast %142 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %144 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.bitcast %144 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%140, %141, %143, %145) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %146 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%140, %146) : (!llvm.ptr<i8>, i64) -> ()
    %147 = llvm.call @omTensorGetShape(%140) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %148 = llvm.call @omTensorGetStrides(%140) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %149 = llvm.mlir.constant(0 : i64) : i64
    %150 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %151 = llvm.getelementptr %147[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %153 = llvm.getelementptr %148[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.extractvalue %48[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %156 = llvm.getelementptr %147[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %48[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.getelementptr %148[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(2 : i64) : i64
    %160 = llvm.extractvalue %48[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %161 = llvm.getelementptr %147[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %48[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %163 = llvm.getelementptr %148[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(3 : i64) : i64
    %165 = llvm.getelementptr %52[%164] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %140, %165 : !llvm.ptr<ptr<i8>>
    %166 = llvm.call @omTensorListCreate(%52, %49, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %166 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<268 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<268 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}
